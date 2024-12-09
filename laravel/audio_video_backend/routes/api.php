<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Middleware\CheckUser;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('/login','App\Http\Controllers\LoginController@login');
Route::get('/get_profile','App\Http\Controllers\LoginController@get_profile');
Route::get('/contact', 'App\Http\Controllers\LoginController@contact')->middleware(CheckUser::class);

// Route::group(['namespace'=>'Controllers'], function(){
//     Route::get('/login', 'LoginController@login');
//     Route::get('/get_profile', 'LoginController@get_profile');

// });
