<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ImageController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\FrontEnd\ShopController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/login', [AuthController::class, 'login'])->name('api.login');

Route::middleware('auth:sanctum')
    ->get('/user', function (Request $request) {
        return $request->user();
    })
    ->name('api.user');

Route::name('api.')
    ->middleware('auth:sanctum')
    ->group(function () {
        Route::apiResource('products', ProductController::class);

        Route::apiResource('users', UserController::class);

        Route::apiResource('categories', CategoryController::class);

        Route::apiResource('images', ImageController::class);
    });


    /**
     * Frontend Routes
     */

     Route::prefix('frontend')->group(function(){

        Route::get('/list-products', [ShopController::class, 'listProducts'])
        ->name('frontend.products.list');

        Route::get('/list-categories', [ShopController::class, 'listCategories'])
        ->name('frontend.categories.list');

        Route::get('/get-single-product/{product_id}', [ShopController::class, 'getSingleProduct'])
        ->name('frontend.products.single');

        Route::get('/get-category-products/{category_id}', [ShopController::class, 'getCategoryProduct'])
        ->name('frontend.category.products');

     });