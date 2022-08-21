<?php

use App\Http\Controllers\API\USER\BudgetController;
use App\Http\Controllers\API\USER\CategoryController;
use App\Http\Controllers\API\USER\GuestlistController;
use App\Http\Controllers\API\USER\ListingCommentController;
use App\Http\Controllers\API\USER\ListingController;
use App\Http\Controllers\API\USER\RatingController;
use App\Http\Controllers\API\USER\SubscriptionController;
use App\Http\Controllers\API\USER\TaskModelController;
use App\Http\Controllers\API\USER\UserController;
use App\Http\Controllers\API\USER\WeddingWebsiteController;
use App\Http\Controllers\API\USER\WishlistController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\USER\CouplesubController;
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

// AUTHENTICATION
Route::post('/vendor/register', [UserController::class, 'vendor_register']);
Route::post('/couple/register', [UserController::class, 'couple_register']);
Route::post('/login', [UserController::class, 'login']);

Route::get('/resend/token', [UserController::class, 'resend_token']);

Route::middleware('auth:api')->group(function () {

//VENDOR LISTING
    Route::post('/vendor/create/listing', [ListingController::class, 'create']);
    Route::get('/vendor/update/listing/file/{id?}/{file_id?}/{type?}', [ListingController::class, 'deletefile']);
    Route::post('/vendor/update/listing', [ListingController::class, 'edit']);
    Route::get('/vendor/mylisting/{paginate?}', [ListingController::class, 'showMylisting']);
    Route::get('/vendor/delete/listing/{id?}', [ListingController::class, 'delete']);
    Route::get('/vendor/hire/{paginate?}', [ListingController::class, 'hire_vendor']);
    Route::get('/listing/getByid/{id?}', [ListingController::class, 'getListingById']);

    Route::get('/vendor/all/listing/{paginate?}', [ListingController::class, 'showAlllisting']);
    //

//subscription
    Route::get('/subscripton/show/all', [SubscriptionController::class, 'index']);
    Route::get('/subscription/getById/{id?}', [SubscriptionController::class, 'getPlanById']);

    Route::post('/payment/intent', [SubscriptionController::class, 'createIntent']);
    Route::post('/payment/confirm', [SubscriptionController::class, 'recordPayment']);

// couple wishlist
    Route::post('/wishlist/toggle', [WishlistController::class, 'create']);
    Route::get('/wishlist/delete/{id?}', [WishlistController::class, 'destroy']);
    Route::get('/wishlist/list/{id?}/{paginate?}', [WishlistController::class, 'show']);

//couple task Route
    Route::post('/task/create', [TaskModelController::class, 'create']);
    Route::get('/task/mark_complete/{id?}', [TaskModelController::class, 'makeComplete']);
    Route::post('/task/update', [TaskModelController::class, 'update']);
    Route::get('/task/delete/{id?}', [TaskModelController::class, 'destroy']);
    Route::get('/task/show/{paginate?}/{user_id?}', [TaskModelController::class, 'index']);

// couple budget routes
    Route::post('/budget/create', [BudgetController::class, 'create']);
    Route::post('budget/update', [BudgetController::class, 'update']);
    Route::get('/budget/show/{paginate?}', [BudgetController::class, 'index']);
    Route::get('/budget/byId/{id?}', [BudgetController::class, 'showById']);
    Route::get('/budget/delete/{id?}', [BudgetController::class, 'destroy']);
    Route::get('/budget/show/all/{id?}/{paginate?}', [BudgetController::class, 'index']);

// rate Listing
    Route::post('/create/rate', [RatingController::class, 'createRating']);
    Route::get('/rating/delete/{id?}', [RatingController::class, 'deleteRating']);
    Route::get('/rating/approve/{id?}', [RatingController::class, 'approveRating']);

//comment on listing_id
    // ListingCommentController
    Route::post('/create/listing/comment', [ListingCommentController::class, 'create']);
    Route::get('/listing/comment/delete/{id?}', [ListingCommentController::class, 'delete']);
    Route::get('/listing/comment/approve/{id?}', [ListingCommentController::class, 'approve']);

// category
    Route::get('/category', [CategoryController::class, 'index']);

// vendor search
    Route::any('/listing/search', [ListingController::class, 'searchListing']);

//  User profile   VendorProfile  CoupleProfile   updateCouple updateVendor
    Route::get('/vendor/profile/{id?}', [UserController::class, 'VendorProfile']);
    Route::get('/couple/profile/{id?}', [UserController::class, 'CoupleProfile']);

    Route::post('/vendor/profile/update', [UserController::class, 'updateVendor']);
    Route::post('/couple/profile/update', [UserController::class, 'updateCouple']);

    Route::post('/guest/list/create', [GuestlistController::class, 'create']);

    Route::post('/guest/list/update', [GuestlistController::class, 'update']);

    Route::get('/guest/list/single/{id?}', [GuestlistController::class, 'getGuestById']);

    Route::get('/guest/list/all/{id?}/{paginate?}', [GuestlistController::class, 'showGuestList']);

    Route::get('/guest/list/delete/{id?}', [GuestlistController::class, 'delGuestById']);

    Route::get('/guest/list/status/{id?}/{status?}', [GuestlistController::class, 'updateStatus']);

//UPDATE USER PASSWORD
    Route::post('/update/user/password', [UserController::class, 'updatePassword']);

// WEDDING WEBSITE
    Route::post('/user/wedding/website/home/create', [WeddingWebsiteController::class, 'createHome']);
    Route::post('/user/wedding/website/home/update', [WeddingWebsiteController::class, 'updateHome']);
    Route::post('/user/wedding/website/story/create',[WeddingWebsiteController::class,'createStory']);
    Route::post('/user/wedding/website/story/update',[WeddingWebsiteController::class,'updateStory']);
    Route::get('/user/wedding/website/story/update/file/{user_id?}/{name?}',[WeddingWebsiteController::class,'deleteStoryFile']);
    Route::get('/user/wedding/website/home/get/{user_id?}', [WeddingWebsiteController::class, 'getHomepage']);

    Route::get('/user/wedding/website/story/get/{user_id?}',[WeddingWebsiteController::class,'getStoryPage']);

    Route::post('/user/wedding/website/gallery/create',[WeddingWebsiteController::class,'createGallery']);
    Route::post('/user/wedding/website/gallery/update',[WeddingWebsiteController::class,'updateGallery']);
    Route::get('/user/wedding/website/gallery/update/file/{user_id?}/{name?}',[WeddingWebsiteController::class,'deleteGalleryFile']);


    Route::get('/user/wedding/website/gallery/get/{user_id?}',[WeddingWebsiteController::class,'getGalleryPage']);



    Route::post('/user/wedding/website/question/create',[WeddingWebsiteController::class,'createQuestion']);
    Route::post('/user/wedding/website/question/update',[WeddingWebsiteController::class,'UpdateQuestion']);
    Route::get('/user/wedding/website/question/delete/{id?}',[WeddingWebsiteController::class,'deleteQuestion']);
    Route::get('/user/wedding/website/question/get/{user_id?}',[WeddingWebsiteController::class,'getQuestionPage']);


    Route::get('/user/wedding/website/template/add/{user_id?}/{template_id?}',[WeddingWebsiteController::class,'chooseTemplate']);
    Route::get('/user/wedding/website/template/find/{user_id?}',[WeddingWebsiteController::class,'FindTemplate']);

    Route::get('/get/all/websites/{paginate}',[WeddingWebsiteController::class,'getwebsites']);
    Route::any('/search/website',[WeddingWebsiteController::class,'search']);




    // couple Subscription

    Route::get('get/couple/sub/plans',[CouplesubController::class,'index']);

    Route::get('get/couple/sub/plansbyId/{id?}',[CouplesubController::class,'getPlanById']);

    Route::post('get/couple/sub/createIntent',[CouplesubController::class,'createIntent']);

    Route::post('/get/couple/record/trans',[
        CouplesubController::class,'recordPayment'
    ]);

    Route::get('/get/couple/sub/status/{user_id?}',[
        CouplesubController::class,'checkStatus'
    ]);

});
