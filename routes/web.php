<?php

use App\DataTables\UsersDataTable;
use App\Events\UserRegisterd;
use App\Helpers\ImageFilter\ImageFilter;
use App\Http\Controllers\CartController;
use App\Http\Controllers\PaymentGateways\Paypal\PaypalController;
use App\Http\Controllers\PaymentGateways\Stripe\StripeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use App\Jobs\SendMail;
use App\Mail\PostPublished;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;
use Intervention\Image\ImageManager;
use Intervention\Image\ImageManagerStatic;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Str;

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

Route::get('/', function ()
{
    return view('home');
})->name('/');

Route::get('user/{id}/edit', function($id)
{
    return $id;
})->name('user.edit');

Route::get('/dashboard', function (UsersDataTable $dataTable)
{
    // $users = User::paginate(10);
    return $dataTable->render('dashboard');
    // return view('dashboard', compact('users'));
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('image', function()
{

    // $img->filter(new ImageFilter());
    // return $img->response();

    // $img = ImageManagerStatic::make('choca.jpg');

    // crop image
    // $img->crop(400, 400);
    // $img->save('chocav1.jpg');
    // // return 'hello';
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


/** CRUD Routes */
Route::group(['middleware' => 'auth'], function(){
    Route::get('/posts/trash', [PostController::class, 'trashed'])->name('posts.trashed');
    Route::get('/posts/{id}/restore', [PostController::class, 'restore'])->name('posts.restore');
    Route::delete('/posts/{id}/force-delete', [PostController::class, 'forceDelete'])->name('posts.force_delete');

    Route::resource('posts', PostController::class);

    Route::get('shop', [CartController::class, 'shop'])->name('shop');
    Route::get('cart', [CartController::class, 'cart'])->name('cart');

    Route::get('add-to-cart/{product_id}', [CartController::class, 'addToCart'])->name('add-to-cart');

    Route::get('qty-increment/{rowId}', [CartController::class,'qtyIncrement'])->name('qty-increment');
    Route::get('qty-decrement/{rowId}', [CartController::class,'qtyDecrement'])->name('qty-decrement');
    Route::get('deleted-cart/{rowId}', [CartController::class, 'delete'])->name('deleted-cart');
    // Route::get('', [CartController::class,''])->name('');

    Route::get('create-role', function()
    {
        // $role = Role::create(['name' => 'writer']);
        // $permission = Permission::create(['name' => 'edit articles']);
        // return $permission;
        $user = auth()->user();
        // $user->assignRole('writer');

        // if ($user->can('writer')) {
        //     return 'user have permission';
        // }
        // else {
        //     return 'user dont have permission';
        // }

        // return $user->permission;
    });


});

Route::get('send-mail', function(){

    SendMail::dispatch();

    dd('mail has been send');
});

Route::get('user-register', function(){
    $email = 'example@gmail.com';

    event(new UserRegisterd($email));
    dd('message send');
});

// en, hi
Route::get('greeting/{locale}', function($locale){

    App::setLocale($locale);

    return view('greeting');
})->name('greeting');

Route::get('/auth/redirect', function () {
    return Socialite::driver('github')->redirect();
});

Route::get('/auth/callback', function () {
    $user = Socialite::driver('github')->user();

    $user = User::firstOrCreate(
        ['email' => $user->email],
        [
            'name' => $user->name,
            'password' => bcrypt(Str::random(24))
        ]
    );

    Auth::login($user, true);

    return redirect('/dashboard');
    // $user->token;
});


// this router for payment
// Paypal
Route::post('paypal/payment', [PaypalController::class, 'payment'])->name('paypal.payment');
Route::get('paypal/success', [PaypalController::class, 'success'])->name('paypal.success');
Route::get('paypal/cancel', [PaypalController::class, 'cancel'])->name('paypal.cancel');

// Stripe

Route::post('stripe/payment', [StripeController::class, 'payment'])->name('stripe.payment');
Route::get('stripe/success', [StripeController::class, 'success'])->name('stripe.success');
Route::get('stripe/cancel', [StripeController::class, 'cancel'])->name('stripe.cancel');
