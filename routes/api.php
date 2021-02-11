<?php

use Illuminate\Support\Facades\Route;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) { return $request->user(); });


/**
 * Fetches lists of comic characters with optional filters.
 */
Route::resource('characters','App\Http\Controllers\API\CharacterController')->only(['index','show']);

Route::group(array('prefix' => 'characters/{character}'), function($character)
{
    Route::get('comics','App\Http\Controllers\API\CharacterComicController@show');

    Route::get('events','App\Http\Controllers\API\CharacterEventController@show');

    Route::get('series','App\Http\Controllers\API\CharacterSerieController@show');

    Route::get('stories','App\Http\Controllers\API\CharacterStoryController@show');

});


/**
 * Fallback for not found routes
 */
Route::fallback(function(){
    return response()->json([
        'code' => "ResourceNotFound",
        'message' => url()->current()." does not exist"]
        , 404);
});