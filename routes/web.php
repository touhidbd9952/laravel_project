<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OurProjectController;
use App\Http\Controllers\SliderController;

/*
|--------------------------------------------------------------------------
| Web Routes 
|--------------------------------------------------------------------------
|
| use for website routing
|
*/

Route::get('/', [App\Http\Controllers\MainController::class, 'index'])->name('/');



Auth::routes();

Route::any('/register', function(){
    return view('auth.login');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/aboutus', [App\Http\Controllers\MainController::class, 'aboutus'])->name('aboutus');
Route::get('/amphibious/{id}', [App\Http\Controllers\MainController::class, 'amphibious'])->name('amphibious');
Route::get('/amphibious_items', [App\Http\Controllers\MainController::class, 'amphibious_items'])->name('amphibious_items');
Route::get('/amphibious/view/{id}', [App\Http\Controllers\MainController::class, 'amphibious_view'])->name('amphibious.view');
Route::get('/contactus', [App\Http\Controllers\MainController::class, 'contactus'])->name('contactus');
Route::post('/general/contactus', [App\Http\Controllers\MainController::class, 'general_contactus'])->name('general_contactus');
//customer inquery
Route::post('/contactmail', [App\Http\Controllers\MainController::class, 'contactmail'])->name('contactmail');
Route::get('/change_language/{lan}', [App\Http\Controllers\MainController::class, 'change_language']);
Route::get('/refresh_captcha', [App\Http\Controllers\MainController::class,'refreshCaptcha'])->name('refresh_captcha');
Route::get('/fabrications', [App\Http\Controllers\MainController::class, 'fabrications'])->name('fabrications');




Route::group(['middleware'=>['Admin','auth']],function(){
	//admin account
    Route::get('admin/addform', [AdminController::class,'add_form'])->name('admin.add_form');
    Route::post('admin/store', [AdminController::class,'store'])->name('admin.store');	
    Route::get('admin/view',[AdminController::class,'view'])->name('admin.view');
    Route::get('admin/edit/{id}', [AdminController::class,'edit']);
    Route::post('admin/update/{id}', [AdminController::class,'update']);
    Route::get('admin/delete/{id}', [AdminController::class,'delete']);
    Route::post('admin/change_pass/{id}', [AdminController::class,'change_pass'])->name('admin.change_pass');
    //admin dashboard
    Route::get('dashboard',[AdminController::class,'dashboard'])->name('dashboard');

    //category of fabrication
    Route::get('category/addform', [CategoryController::class,'add_form'])->name('category.add_form');
    Route::post('category/store', [CategoryController::class,'store'])->name('category.store');	
    Route::get('category/edit/{id}', [CategoryController::class,'edit']);
    Route::post('category/update/{id}', [CategoryController::class,'update']);
    Route::get('category/view',[CategoryController::class,'view'])->name('category.view');
    Route::get('category/delete/{id}', [CategoryController::class,'delete']);
    //product of fabrication
    Route::get('product/addform', [ProductController::class,'add_form'])->name('product.add_form');
    Route::post('product/store', [ProductController::class,'store'])->name('product.store');	
    Route::get('product/edit/{id}', [ProductController::class,'edit']);
    Route::post('product/update/{id}', [ProductController::class,'update']);
    Route::get('product/view',[ProductController::class,'view'])->name('product.view');
    Route::get('product/delete/{id}', [ProductController::class,'delete']);
    //product multiple image
    Route::get('productimage/addmore/{id}', [ProductController::class,'productimage_addmore']);
    Route::post('productimage/addmoreupload', [ProductController::class,'productimage_addmore_upload']);
    Route::get('productimage/edit/{id}',[ProductController::class,'edit_productimage']);
    Route::post('productimage/update/{id}',[ProductController::class,'update_productimage']);
    Route::get('productimage/delete/{id}',[ProductController::class,'delete_productimage']);

    //product multiple image
    Route::get('product/imageview/{id}', [ProductController::class,'imageview']);
    //product Thumbnail Image
    Route::get('productthumbnailimage/edit/{id}',[ProductController::class,'edit_productthumbnailimage']);
    Route::post('product/change_thumbnail/{id}', [ProductController::class,'change_thumbnail']);

    //product multiple video
    Route::get('product/videoview/{product_id}', [ProductController::class,'productvideo_view']);
    Route::get('productvideo/addmore/{id}', [ProductController::class,'productvideo_addmore']);
    Route::post('productvideo/addmoreupload/{id}', [ProductController::class,'productvideo_addmore_upload']);
    Route::get('productvideo/edit/{id}',[ProductController::class,'edit_productvideo']);
    Route::post('productvideo/update/{id}',[ProductController::class,'update_productvideo']);
    Route::get('productvideo/delete/{id}',[ProductController::class,'delete_productvideo']);

    //product_enquiry
    Route::get('product/enquiry', [ProductController::class,'product_enquiry_view'])->name('product.enquiry');
    Route::get('product_enquiry/view_details/{id}', [ProductController::class,'product_enquiry_view_details']);
    Route::get('product_enquiry/delete/{id}', [ProductController::class,'product_enquiry_delete']);

    //project of fabrication
    Route::get('project/addform', [OurProjectController::class,'project_addform'])->name('project.add_form');
    Route::post('project/store', [OurProjectController::class,'project_store'])->name('project.store');	
    Route::get('project/edit/{id}', [OurProjectController::class,'project_edit']);
    Route::post('project/update/{id}', [OurProjectController::class,'project_update'])->name('project.update');
    Route::get('project/view',[OurProjectController::class,'project_view'])->name('project.view');
    Route::get('project/delete/{id}', [OurProjectController::class,'project_delete']);

    //slider
    Route::get('slider/addform', [SliderController::class,'slider_addform'])->name('slider.add_form');
    Route::post('slider/store', [SliderController::class,'slider_store'])->name('slider.store');	
    Route::get('slider/edit/{id}', [SliderController::class,'slider_edit']);
    Route::post('slider/update/{id}', [SliderController::class,'slider_update'])->name('slider.update');
    Route::get('slider/view',[SliderController::class,'slider_view'])->name('slider.view');
    Route::get('slider/delete/{id}', [SliderController::class,'slider_delete']);

});
