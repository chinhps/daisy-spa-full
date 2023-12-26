<?php

use App\Http\Controllers\Blog\BlogController;
use App\Http\Controllers\Booking\BookingController;
use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\Information\InformationController;
use App\Http\Controllers\Service\ServiceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::prefix("booking")->group(function () {
    Route::post("/", [BookingController::class, "booking"]);
    Route::get("check-booking/{key}", [BookingController::class, "checkBooking"]);
});

Route::get("informations", [InformationController::class, "list"]);
Route::get("categories", [CategoryController::class, "list"]);

Route::prefix("blogs")->group(function () {
    Route::get("/",  [BlogController::class, "list"]);
    Route::get("/{slug}", [BlogController::class, "get"]);
});

Route::prefix("services")->group(function () {
    Route::get("/",  [ServiceController::class, "list"]);
    Route::get("/popular", [ServiceController::class, "popular"]);
    Route::get("/all", [ServiceController::class, "all"]);
    Route::get("/{slug}", [ServiceController::class, "get"]);
});
