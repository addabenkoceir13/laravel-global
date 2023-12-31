**Section 28**  Packages Data-Tables 
===============================
### Installation Yajra Laravel DataTables

- [Doc yajra Laravel](https://yajrabox.com/docs/laravel-datatables/10.0/installation)
- [Doc Data Tables](https://datatables.net/)

### Installing Laravel & DataTables
- [Doc Insttalation](https://yajrabox.com/docs/laravel-datatables/10.0/quick-starter)
  
- **#1** install datatables Laravel 9
<br>
    
      composer require yajra/laravel-datatables:"^9.0"

- **#2** install Laravel DataTables Vite

        npm i laravel-datatables-vite --save-dev

    - resources/js/app.js

            import './bootstrap';
            import 'laravel-datatables-vite';

    - resources/sass/app.scss **or** resources/css/app.css


            @import url('https://fonts.bunny.net/css?family=Nunito');
    
            @import 'variables';
    
            @import 'bootstrap/scss/bootstrap';
    
            @import 'bootstrap-icons/font/bootstrap-icons.css';
            @import "datatables.net-bs5/css/dataTables.bootstrap5.min.css";
            @import "datatables.net-buttons-bs5/css/buttons.bootstrap5.min. css";
            @import 'datatables.net-select-bs5/css/select.bootstrap5.css';

    - 
            npm run dev

- **#3** Setup a User DataTable
>php artisan datatables:make UsersModel

        php artisan datatables:make Users

#### How to impoter and  downloand data to excel 
    > to needs install [Laravel Excel](https://docs.laravel-excel.com/3.1/getting-started/installation.html)


- Installation

        composer require maatwebsite/excel

    >The Maatwebsite\Excel\ExcelServiceProvider is auto-discovered and registered by default. <br>
    If you want to register it yourself, add the ServiceProvider in config/app.php:

        'providers' => [
            /*
            * Package Service Providers...
            */
            Maatwebsite\Excel\ExcelServiceProvider::class,
        ]
    >The Excel facade is also auto-discovered.
     If you want to add it manually, add the Facade in config/app.php:

       'aliases' => [
        'Excel' => Maatwebsite\Excel\Facades\Excel::class,
        ]
    > To publish the config, run the vendor publish command:

        php artisan vendor:publish --provider="Maatwebsite\Excel\ExcelServiceProvider" --tag=config

####  How to impoter and  downloand PDF 

- [Doc PDf](https://wkhtmltopdf.org/index.html)

<br>
<br>

**Section 29** Packages intervention Image
===============================================================

- [Doc intervention Image](https://image.intervention.io/v3)

* Install Intervention Image with Composer by running the following command.

      composer require intervention/image
<br>
<br>

**Section 30** Packages Shopping Cart 
===============================================================

- [Shopping cart package Laravel](https://github.com/bumbummen99/LaravelShoppingcart)

        composer require bumbummen99/shoppingcart

        php artisan vendor:publish --provider="Gloudemans\Shoppingcart\ShoppingcartServiceProvider" --tag="config"

- after install shopping cart so install new package **laravel debugbar**
    
    - [Shopping cart package Laravel debugbar](https://github.com/barryvdh/laravel-debugbar)

<br>
<br>

**Section** Package Spatie Laravel Permission
================================================================
- [Laravel Spatie](https://spatie.be/)
- [Laravel Permission Doc](https://spatie.be/docs/laravel-permission/v6/introduction)


        composer require spatie/laravel-permission

<br>
<br>

**Section 32** Package Socialite social Authenication (social login)
========================================================================

<br>

- [Laravel Social Doc ](https://laravel.com/docs/10.x/socialite#main-content)

### Install Socialite for Laravel :

    composer require laravel/socialite

>These credentials should be placed in your application's config/services.php

    'github' => [
        'client_id' => env('GITHUB_CLIENT_ID'),
        'client_secret' => env('GITHUB_CLIENT_SECRET'),
        'redirect' => env('GITHUB_REDIRECT_SECRET'),
    ],

> got to file **.env**

    GITHUB_CLIENT_ID=
    GITHUB_CLIENT_SECRET=
    GITHUB_REDIRECT_SECRET=http://127.0.0.1:8000/auth/callback

#### Authentication

    use Laravel\Socialite\Facades\Socialite;
 
    Route::get('/auth/redirect', function () {
        return Socialite::driver('github')->redirect();
    });
 
    Route::get('/auth/callback', function () {
        $user = Socialite::driver('github')->user();
    
        // $user->token
    });
 
- Create new OAuth apps
- after creaéte you can use Client Id and Client secrets into .env

[GitHub OAuth Apps - Create a new authorization application](https://github.com/settings/applications/new)


