<?php

use Illuminate\Http\Request;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();

Route::post('proseslogin', 'App\Http\Controllers\UserController@userproseslogin');
Route::get('user', 'App\Http\Controllers\UserController@home');
Route::get('cari', 'App\Http\Controllers\UserController@userprosescari');
Route::post('user/simpanuser', 'App\Http\Controllers\UserController@simpan');
Route::post('user/updateuser/{id}', 'App\Http\Controllers\UserController@edit');
Route::delete('user/deleteuser/{id}', 'App\Http\Controllers\UserController@delete');

});
