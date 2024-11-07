<?php

use App\Http\Controllers\PostController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PostController::class, 'index']);

Route::get('/writer', [WriterController::class, 'view']);
Route::get('/writer/{id}', [PostController::class, 'showByWriterID']);

Route::get('/IM', [PostController::class, 'viewIM']);
Route::get('/SE', [PostController::class, 'viewSE']);

Route::get('/post/{id}', [PostController::class, 'showByPostID']);
Route::get('/popular', [PostController::class, 'showAllPost']);

Route::get('/aboutUs', function(){
    return view('about-us');
});