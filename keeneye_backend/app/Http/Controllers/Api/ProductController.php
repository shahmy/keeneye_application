<?php

namespace App\Http\Controllers\Api;

use App\Models\Image;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductCollection;
use App\Http\Requests\ProductStoreRequest;
use App\Http\Requests\ProductUpdateRequest;

class ProductController extends Controller
{
    public function index(Request $request): ProductCollection
    {

        $search = $request->get('search', '');

        $products = Product::search($search)
            ->with(['categories', 'images'])
            ->latest()
            ->paginate();

        return new ProductCollection($products);
    }

    public function store(ProductStoreRequest $request): ProductResource
    {
        
        $validated = $request->validated();

        $product = Product::create($validated);
        $product->categories()->attach($request->categories);
        
        if($request->hasFile('images')){
            $x = 0;
            foreach ($request->file('images') as $imagefile) {
                $image = new Image();
                $image->image = $imagefile->store('public/products');
                $image->is_featured = $request->is_image_featured[$x];
                $product->images()->save($image);
                $x++;
            }

        }

        return new ProductResource($product);

        
    }

    public function show(Request $request, Product $product): ProductResource
    {
        $productDetails = $product::with(['categories', 'images'])->find($product->id);
        return new ProductResource($productDetails);
    }

    public function update(ProductUpdateRequest $request,Product $product): ProductResource 
    {
        
        DB::transaction(function () use ($product, $request) {

            $validated = $request->validated();

            $product->update($validated);

            $product->categories()->detach();
            $product->categories()->attach($request->categories);

            $product->images()->delete();

            if($request->hasFile('images')){
                $x = 0;
                foreach ($request->file('images') as $imagefile) {
                    $image = new Image();
                    $image->image = $imagefile->store('public/products');
                    $image->is_featured = $request->is_image_featured[$x];
                    $product->images()->save($image);
                    $x++;
                }

            }

        });

        return new ProductResource($product);
    }

    public function destroy(Request $request, Product $product): Response
    {

        DB::transaction(function () use ($product) {
            $product->categories()->detach();
            $product->images()->delete();
            $product->delete();
        });

        return response()->noContent();
    }
}
