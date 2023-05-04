<?php

namespace App\Http\Controllers\Api\FrontEnd;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\CategoryCollection;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductCollection;

class ShopController extends Controller{

    public function listProducts(): ProductCollection
    {
        try{

            $products = Product::with(['categories','images'])->latest()->paginate();
            return new ProductCollection($products);

        }catch(\Exception $e){
            return response()->json([
                'message' => 'Error while listing products',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function listCategories(): CategoryCollection
    {
        try{

            $categories = Category::with(['products'])->latest()->get();
            return new CategoryCollection($categories);

        }catch(\Exception $e){

            return response()->json([
                'message' => 'Error while listing categories',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function getSingleProduct($prodcut_id):ProductResource
    {
        try{

            $product = Product::where('id', $prodcut_id)->with(['categories','images'])->firstOrFail();
            return new ProductResource($product);

        }catch(\Exception $e){

            return response()->json([
                'message' => 'Error while getting product',
                'error' => $e->getMessage()
            ], 500);
        }

    }

    public function getCategoryProduct($category_id): CategoryResource
    {
        try{

            $category = Category::where('id', $category_id)
            ->with(['products','images'])->firstOrFail();
            return new CategoryResource($category);

        }catch(\Exception $e){

            return response()->json([
                'message' => 'Error while getting category',
                'error' => $e->getMessage()
            ], 500);
        }

    }

}