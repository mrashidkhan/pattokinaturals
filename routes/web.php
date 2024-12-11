<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BaseController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;

use App\Http\Controllers\CartController;

use App\Http\Controllers\DiscountController;


// Route to display a list of discounts
Route::get('/discounts', [DiscountController::class, 'index'])->name('discounts.index');

// Route to show the form for creating a new discount
Route::get('/discounts/create', [DiscountController::class, 'create'])->name('discounts.create');

// Route to store a newly created discount
Route::post('/discounts', [DiscountController::class, 'store'])->name('discounts.store');

// Route to show the form for editing a specific discount
Route::get('/discounts/{id}/edit', [DiscountController::class, 'edit'])->name('discounts.edit');

// Route to update a specific discount
Route::put('/discounts/{id}', [DiscountController::class, 'update'])->name('discounts.update');

// Route to delete a specific discount
Route::delete('/discounts/{id}', [DiscountController::class, 'destroy'])->name('discounts.destroy');

Route::middleware(['auth'])->group(function () {
    Route::post('/cart/add/{productId}', [CartController::class, 'addToCart'])->name('cart.add');
    Route::get('/cart', [CartController::class, 'viewCart'])->name('cart.view');
    Route::delete('/cart/remove/{productId}', [CartController::class, 'removeFromCart'])->name('cart.remove');
    Route::post('/cart/checkout', [CartController::class, 'checkout'])->name('cart.checkout');
});


// BaseController's routes
Route::get('/' ,[BaseController::Class,'home'])->name('home');

Route::get('/shop' ,[BaseController::Class,'shop'])->name('shop');

Route::get('/aboutus' ,[BaseController::Class,'aboutus'])->name('aboutus');

Route::get('/contactus' ,[BaseController::Class,'contactus'])->name('contactus');
Route::get('/cart' ,[BaseController::Class,'cart'])->name('cart');
Route::post('/cart' ,[BaseController::Class,'cart'])->name('cart');

Route::get('user/login' ,[BaseController::Class,'user_login'])->name('user_login');
Route::post('user/login' ,[BaseController::Class,'loginCheck'])->name('loginCheck');
Route::post('user/register' ,[BaseController::Class,'user_store'])->name('user_store');
Route::get('user/logout' ,[BaseController::Class,'logout'])->name('user_logout');

Route::get('/productview{id}' ,[BaseController::Class,'productView'])->name('productview');
// AdminController's routes
Route::get('/admin/login' ,[AdminController::Class,'login'])->name('admin.login');

Route::post('/admin/login' ,[AdminController::Class,'makeLogin'])->name('admin.makeLogin');
Route::get('/login', function () {
    return redirect()->route('admin.login');
})->name('login');

Route::group(['middleware' =>'auth'],function(){
    Route::get('/admin/dashboard' ,[AdminController::Class,'dashboard'])->name('admin.dashboard');
    Route::get('/admin/logout' ,[AdminController::Class,'logout'])->name('admin.logout');

    // CategoryController route
    Route::get('/categories' ,[CategoryController::Class,'index'])->name('category.list');

    Route::get('/category/add' ,[CategoryController::Class,'create'])->name('category.create');

    Route::post('/category/add' ,[CategoryController::Class,'store'])->name('category.store');

    Route::get('/categories/edit/{id}' ,[CategoryController::Class,'edit'])->name('category.edit');
    Route::put('/categories/update/{id}' ,[CategoryController::Class,'update'])->name('category.update');
    Route::post('/category/delete' ,[CategoryController::Class,'destroy'])->name('category.delete');

    // ProductController route
    Route::get('/products', [ProductController::class, 'index'])->name('product.list');
    Route::get('/product/create', [ProductController::class, 'create'])->name('product.create');
    Route::post('/product/create', [ProductController::class, 'store'])->name('product.store');
    Route::get('/product/edit/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/product/edit/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::post('/product/delete', [ProductController::class, 'destroy'])->name('product.delete');
    Route::get('/product/details/{id}', [ProductController::class, 'extraDetails'])->name('product.extraDetails');
    Route::post('/product/details/{id}', [ProductController::class, 'extraDetailsStore'])->name('product.extraDetailsStore');
    Route::get('/admin/users', [UserController::class, 'index'])->name('admin.users');
    Route::post('/admin/delete', [UserController::class, 'delete'])->name('user.delete');

});
