<?php

use App\DataTables\UsersDataTable;
use App\Events\UserRegisterd;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use App\Jobs\SendMail;
use App\Mail\PostPublished;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
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

Route::get('/', function ()
{
    return view('welcome');
});

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
