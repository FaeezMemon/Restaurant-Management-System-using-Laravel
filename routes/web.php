<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Models\Cart;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::get('/',[HomeController::class,'index']);

Route::get('/home',[HomeController::class,'redirect']);

Route::get('/users',[AdminController::class,'user']);

Route::get('/DeleteUser/{id}',[AdminController::class,'DeleteUser']);

Route::get('/foodmenu',[AdminController::class,'foodmenu']);

Route::post('/uploadfood',[AdminController::class,'upload']);

Route::get('/deletemenu/{id}',[AdminController::class,'deletemenu']);

Route::get('/updateview/{id}',[AdminController::class,'updateview']);

Route::post('/update/{id}',[AdminController::class,'update']);

Route::post('/reservation',[AdminController::class,'reservation']);

Route::get('/viewreservation',[AdminController::class,'viewreservation']);

Route::get('/viewchef',[AdminController::class,'viewchef']);

Route::post('/uploadchef',[AdminController::class,'uploadchef']);

Route::get('/updatechef/{id}',[AdminController::class,'updatechef']);

Route::post('/updatefoodchef/{id}',[AdminController::class,'updatefoodchef']);

Route::get('/deletechef/{id}',[AdminController::class,'deletechef']);

Route::post('/addcart/{id}',[HomeController::class,'addcart']);

Route::get('/showcart/{id}',[HomeController::class,'showcart']);

Route::get('/remove/{id}',[HomeController::class,'remove']);

Route::post('/orderconfirm',[HomeController::class,'orderconfirm']);

Route::get('/orders',[AdminController::class,'orders']);

Route::get('/search',[AdminController::class,'search']);

Route::get('/export', [AdminController::class, 'export']);
