<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ADMIN\AdminController;
use Facade\Ignition\Middleware\AddLogs;

Route::post('/create-admin',[AdminController::class,'create']);
Route::post('/admin_login',[AdminController::class,'login']);
