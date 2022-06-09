<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\SubscriptionController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ListingController;
use App\Http\Controllers\API\VendorController;
use App\Http\Controllers\API\SettingsController;

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
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:api')->group(function () {


    // setttings

    Route::post('/setting/update',[SettingsController::class, 'update']);



    // subscription
    Route::post('/subscription/create', [SubscriptionController::class, 'create']);
    Route::post('/subscription/update', [SubscriptionController::class, 'update']);
    Route::get('/subscription/index', [SubscriptionController::class, 'index']);
    Route::get('/subscription/delete/{id?}', [SubscriptionController::class, 'destroy']);

//    category

    Route::post('/cat/create', [CategoryController::class, 'create']);
    Route::get('/cat/delete/{id?}', [CategoryController::class, 'delete']);



    // listing
    Route::post('/listing/create',[ListingController::class,'create']);
    Route::get('/listing/show/all/{paginate?}',[ListingController::class,'show']);
    Route::get('/listing/delete/{id?}/{file_id?}/{type?}',[ListingController::class,'deletefile']);
    Route::post('/listing/update',[ListingController::class,'edit']);
    Route::get('/listing/destroy/{id?}',[ListingController::class,'delete']);
    Route::get('/listing/feature/{id?}/{status?}',[ListingController::class,'feature']);
    Route::get('/listing/promotion/{id?}/{status?}',[ListingController::class,'promotion']);
    Route::get('/listing/approve/{id?}/{status?}',[ListingController::class,'approve_listing']);


    // vendors

    Route::post('/createVendor',[VendorController::class,'vendor_register']);
    Route::post('/createCouple',[VendorController::class,'couple_register']);
    Route::get('user/flag/{id?}/{status?}',[VendorController::class,'flag']);
    Route::get('/user/delete/{id?}',[VendorController::class,'delete']);

});
