<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KategoriBarang;
use App\Http\Controllers\SatuanBarang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/register', [RegisterController::class, 'register']);
Route::post('/login', [LoginController::class, 'login']);


Route::controller(HomeController::class)->group(function () {
    Route::get('/random-user', 'process');
    Route::get('/get-random-user', 'index');
});

Route::controller(BarangController::class)->group(function () {
    Route::get('/barang', 'index');
    Route::get('/barang/show/{id}', 'show');
    Route::post('/barang', 'store');
    Route::put('/barang/{id}', 'update');
    Route::delete('/barang/{id}', 'delete');
});

Route::get('/kategori-barang', [KategoriBarang::class, 'index']);
Route::get('/satuan-barang', [SatuanBarang::class, 'index']);
