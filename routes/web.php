<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login');
});

//users
Route::post('/user/proseslogin', 'App\Http\Controllers\UserController@userproseslogin');
Route::get('/home', 'App\Http\Controllers\UserController@home');
Route::get('/cari', 'App\Http\Controllers\UserController@userprosescari');
Route::get('/formuliruser', 'App\Http\Controllers\UserController@formuliruser');
Route::post('/user/simpanuser', 'App\Http\Controllers\UserController@simpan');
Route::get('/user/edituser/{id}', 'App\Http\Controllers\UserController@formedit');
Route::post('/user/updateuser/{id}', 'App\Http\Controllers\UserController@edit');
Route::get('/user/deleteuser/{id}', 'App\Http\Controllers\UserController@delete');




//dosen
Route::get('/dosen', 'App\Http\Controllers\DosenController@dosen');
Route::get('/dosen/cari', 'App\Http\Controllers\DosenController@dosenprosescari');
Route::get('/dosen/formulirdosen', 'App\Http\Controllers\DosenController@formulirdosen');
Route::post('/dosen/simpandosen', 'App\Http\Controllers\DosenController@simpandosen');
Route::get('/dosen/editdosen/{id}', 'App\Http\Controllers\DosenController@formeditdosen');
Route::post('/dosen/updatedosen/{id}', 'App\Http\Controllers\DosenController@editdosen');
Route::get('/dosen/deletedosen/{id}', 'App\Http\Controllers\DosenController@deletedosen');


