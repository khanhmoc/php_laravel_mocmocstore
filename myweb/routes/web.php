<?php

use App\Http\Controllers\backend\brandcontroller;
use App\Http\Controllers\backend\categorycontroller;
use App\Http\Controllers\backend\grantaccesscontroller;
use App\Http\Controllers\backend\order_productcontroller;
use App\Http\Controllers\backend\ordercontroller as BackendOrdercontroller;
use App\Http\Controllers\backend\productcontroller;
use App\Http\Controllers\backend\providercontroller;
use App\Http\Controllers\backend\rolecontroller;
use App\Http\Controllers\backend\systemcontroller;
use App\Http\Controllers\backend\usercontroller;
use App\Http\Controllers\frontend\ajaxcartcontroller;
use App\Http\Controllers\frontend\cartcontroller;
use App\Http\Controllers\frontend\homecontroller;
use App\Http\Controllers\frontend\languagecontroller;
use App\Http\Controllers\frontend\ordercontroller;
use App\Models\category;
use App\Models\product;
use App\Models\provider;
use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('backend.system.dashboard');
// });
// Route::get('/', function () {
//     return view('');
// })->name('b.dashboard');
Route::get('/config-cache', function () {
    Artisan::call('config:clear');
});
Route::group(['prefix' => 'backend'], function () {
    Route::group(['middleware' => 'backend.auth'], function () {
        Route::group(['middleware' => 'language'], function () {
            Route::resource('/user', usercontroller::class);
            Route::get('/dashboard', [systemcontroller::class, 'index'])->name('b.dashboard');
            Route::resource('/order', order_productcontroller::class);
            Route::resource('/product', productcontroller::class);
            Route::resource('/category', categorycontroller::class);
            Route::resource('/brand', brandcontroller::class);
            Route::resource('/provider', providercontroller::class);
            Route::resource('/role', rolecontroller::class);
        });
    });
    Route::get('/', [homecontroller::class, 'home'])->name('f.home');
    Route::get('/logout', [usercontroller::class, 'logout'])->name('b.logout');
    Route::get('/login', [usercontroller::class, 'login'])->name('b.login');
    Route::post('/login', [usercontroller::class, 'loginpost'])->name('b.loginpost');
});
Route::group(['prefix' => 'client'], function () {
    Route::group(['middleware' => 'language'], function () {
        Route::get('/', [homecontroller::class, 'home'])->name('f.home');
        Route::get('/product', [homecontroller::class, 'product'])->name('f.product');
        Route::get('/product_grid', [homecontroller::class, 'product_grid'])->name('f.product_grid');
        Route::get('/single_pro', [homecontroller::class, 'single_pro'])->name('f.single_pro');
        Route::get('/about', [homecontroller::class, 'about'])->name('f.about');
        Route::get('/contact', [homecontroller::class, 'contact'])->name('f.contact');
        Route::get('/cart', [cartcontroller::class, 'cart'])->name('f.cart');
        Route::post('/add-to-cart', [cartcontroller::class, 'addtocart_ajax'])->name('f.addtocartajax');
        // Route::get('/add-to-cart-{id}', [cartcontroller::class, 'addtocart'])->name('f.addtocart');
        Route::post('/remove-item', [cartcontroller::class, 'removeitem_ajax'])->name('f.removeitemajax');
        // Route::get('/remove-item-{id}', [Cartcontroller::class, 'removeitem'])->name('f.removeitem');
        Route::post('/update_cart_ajax_up', [cartcontroller::class, 'updatecart_ajax_up'])->name('f.updatecart_ajax_up');
        Route::post('/update_cart_ajax_down', [cartcontroller::class, 'updatecart_ajax_down'])->name('f.updatecart_ajax_down');
        // Route::post('/update-cart', [Cartcontroller::class, 'updatecart'])->name('f.updatecart');
        Route::get('/checkout', [ordercontroller::class, 'checkout'])->name('f.checkout');
        Route::post('/checkouts', [ordercontroller::class, 'create'])->name('f.createbill');
        Route::get('/completed', [ordercontroller::class, 'completed'])->name('f.completed');
        Route::post('/home', [homecontroller::class, 'complainpost'])->name('f.f2');
        Route::get('/randomtest', [homecontroller::class, 'randomtest'])->name('f.test');
        Route::post('/randompost', [homecontroller::class, 'randompost'])->name('f.testpost');
        Route::post('/randompost2', [homecontroller::class, 'randompost2'])->name('f.testpost2');
        Route::get('/randomtest2', [homecontroller::class, 'randomtest2'])->name('f.test2');
        Route::post('/testform2', [cartcontroller::class, 'form22'])->name('f.testf22');
        Route::post('/search_category', [homecontroller::class, 'search_category'])->name('f.search_category');
        Route::post('/search_brand', [homecontroller::class, 'search_brand'])->name('f.search_brand');
        Route::post('/search_provider', [homecontroller::class, 'search_provider'])->name('f.search_provider');
        Route::get('/single_product_{id}', [homecontroller::class, 'single_product'])->name('f.single_product');
        Route::get('/search_product', [homecontroller::class, 'search_product'])->name('f.search_product');
    });
    Route::get('/translate-{language}', [homecontroller::class, 'translate'])->name('f.translate');
});

Route::get('/test', [usercontroller::class, 'testpass'])->name('b.testpass');
Route::get('/testtt', [languagecontroller::class, 'testtt'])->name('f.testtt');
