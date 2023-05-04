<?php

namespace App\Http\Controllers\Api;

use App\Models\Category;
use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\CategoryCollection;
use App\Http\Requests\CategoryStoreRequest;
use App\Http\Requests\CategoryUpdateRequest;

class CategoryController extends Controller
{
    public function index(Request $request): CategoryCollection
    {
        
        $search = $request->get('search', '');

        $categories = Category::search($search)
            ->with(['products', 'images'])
            ->latest()
            ->paginate();

        return new CategoryCollection($categories);
    }

    public function store(CategoryStoreRequest $request): CategoryResource
    {
        
        $validated = $request->validated();

        $category = Category::create($validated);

        if($request->hasFile('images')){
            $x = 0;
            foreach ($request->file('images') as $imagefile) {
                $image = new Image();
                $image->image = $imagefile->store('public/categories');
                $image->is_featured = $request->is_image_featured[$x];
                $category->images()->save($image);
                $x++;
            }

        }

        return new CategoryResource($category);
    }

    public function show(Request $request, Category $category): CategoryResource
    {
        $categoryDetails = $category::with(['products', 'images'])->find($category->id);
        return new CategoryResource($categoryDetails);
    }

    public function update(
        CategoryUpdateRequest $request,
        Category $category
    ): CategoryResource {

        $validated = $request->validated();

        $category->update($validated);

        $category->images()->delete();

        if($request->hasFile('images')){
            $x = 0;
            foreach ($request->file('images') as $imagefile) {
                $image = new Image();
                $image->image = $imagefile->store('public/categories');
                $image->is_featured = $request->is_image_featured[$x];
                $category->images()->save($image);
                $x++;
            }

        }

        return new CategoryResource($category);
    }

    public function destroy(Request $request, Category $category): Response
    {
        $category->products()->detach();
        $category->images()->delete();
        $category->delete();

        return response()->noContent();
    }
}
