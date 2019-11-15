<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::group(['middleware' => ['json.response']], function () {
    Route::post('register', 'API\RegisterController@register');
    Route::post('login', 'API\RegisterController@login')->name('login');
    
    Route::middleware('auth:api')->group( function () {
        Route::resource('products', 'API\ProductController');
        // Route::get('products', 'API\ProductController@query');
        Route::post('logout', 'API\RegisterController@logout');
    });
});