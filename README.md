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

<br>
<br>

**Section 34** Package Payment Gateways: PayPal Integration
================================================

#### Gateways we will be Learning

- Paypal Integration
- Strip Integration
- Razorpay Integration
- Sslcommerz Integration
- Instamojo integration
- Mollie integration
- 2checkout integration
- Paystack integration

### **1-** Installing the PayPal SDK for PHP

* [paypal Dashboarf](https://developer.paypal.com/dashboard/)<br>
* [Sandbox test accounts](https://developer.paypal.com/dashboard/accounts)<br>
* [Laravel Paypal GitHub](https://github.com/srmklive/laravel-paypal)<br>
* [Docs Laravel Paypal](https://srmklive.github.io/laravel-paypal/docs.html)
  
<br>

**Getting Started**

    composer require srmklive/paypal:~3.0

>After installation, you can use the following commands to publish the assets:

    php artisan vendor:publish --provider "Srmklive\PayPal\Providers\PayPalServiceProvider"

>After publishing the assets, add the following to your .env files .

    #PayPal API Mode
    # Values: sandbox or live (Default: live)
    #sandbox in local server
    #libe in online server
    PAYPAL_MODE=sandbox

    #PayPal Setting & API Credentials - sandbox
    PAYPAL_SANDBOX_CLIENT_ID=AaeelkhhJXCHlVABE1vEWh03BgQtF0cBGlUHp6HHcne9rt7-iXJIZl1Dn2a1DHd8dkS0gPvSDNzto06M
    PAYPAL_SANDBOX_CLIENT_SECRET=ENvONOd_LfaCekiNRkieGKgRVvwaINArAYw5v4cHc9EDib_lDp6pVv3EvUPNEOvI1kwffV5UZq7UgI9i

    #PayPal Setting & API Credentials - live
    # PAYPAL_LIVE_CLIENT_ID=
    # PAYPAL_LIVE_CLIENT_SECRET=

>The configuration file paypal.php is located in the config folder. Following are its contents when published:

    return [
    'mode'    => env('PAYPAL_MODE', 'sandbox'), // Can only be 'sandbox' Or 'live'. If empty or invalid, 'live' will be used.
    'sandbox' => [
        'client_id'         => env('PAYPAL_SANDBOX_CLIENT_ID', ''),
        'client_secret'     => env('PAYPAL_SANDBOX_CLIENT_SECRET', ''),
        'app_id'            => 'APP-80W284485P519543T',
    ],
    'live' => [
        'client_id'         => env('PAYPAL_LIVE_CLIENT_ID', ''),
        'client_secret'     => env('PAYPAL_LIVE_CLIENT_SECRET', ''),
        'app_id'            => '',
    ],

    'payment_action' => env('PAYPAL_PAYMENT_ACTION', 'Sale'), // Can only be 'Sale', 'Authorization' or 'Order'
    'currency'       => env('PAYPAL_CURRENCY', 'USD'),
    'notify_url'     => env('PAYPAL_NOTIFY_URL', ''), // Change this accordingly for your application.
    'locale'         => env('PAYPAL_LOCALE', 'en_US'), // force gateway language  i.e. it_IT, es_ES, en_US ... (for express checkout only)
    'validate_ssl'   => env('PAYPAL_VALIDATE_SSL', true), // Validate SSL when creating api client.
    ];

>after configuration file paypal so next step is create paypal controller and create functions (pyment, success, cancel)  
![Pyment](<markdown/function payment.png>)
![Success and cancel](<markdown/function success and cancel.png>)

- Function Pyment 

        public function payment(Request $request)
        {
        $provider = new PayPalClient;

        $provider->setApiCredentials(config('paypal'));

        $paypalToken = $provider->getAccessToken();

        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route("paypal.success"),
                "cancel_url" => route("paypal.cancel"),
            ],
            "purchase_units" => [
                [
                    "amount" => [
                        "value" => $request->input('price'),//$request->input('amount'),
                        "currency_code" => "USD"
                        ]
                ]
            ]
        ]);
        if (isset($response['id']) && $response['id'] != null){
            foreach ($response['links'] as $link){
                if ($link["rel"] === 'approve') {
                    return redirect()->away($link['href']);
                }
            }
        }
        else {
            return redirect()->route('paypal.cancel');
        }
    }

- function success 

        public function success(Request $request)
        {
        $provider = new PayPalClient;

        $provider->setApiCredentials(config('paypal'));

        $paypalToken = $provider->getAccessToken();

        $response = $provider->capturePaymentOrder($request->token);

        if (isset($response['status']) && $response   ['status'] == 'COMPLETED') {
        return 'Paid Successfully!';
        }

        return redirect()->route('paypal.cancel');
        }

- function cancel 

        public function cancel(Request $request)
        {
            return 'Payment faild';
        }

<hr>

### **2-** Installing the Stripe 

* [Site Stripe](https://dashboard.stripe.com/test/apikeys)
* [Github Stripe](https://github.com/stripe/stripe-php)
* [Stripe test Card](https://stripe.com/docs/testing)
**Getting Started**
1. Add stripe to composer file : 

        composer require stripe/stripe-php

> after install create a new file in **config/stripe.php** and write this: 

    <?php

    return [
        'pk' => env('STRIPE_PK'),
        'sk' => env('STRIPE_SK'),
    ];

>After create file , add the following to your .env files .

    STRIPE_PK=pk_test_51OX9AVLBNzlSIyXkQUX5e3bodfRf6dKcZNkSDB6IQPqhVnHX26kumxHARMcqQ0cV6aLudFNKjBnIK6O91s7vYBX100Upur9KpC
    STRIPE_SK=sk_test_51OX9AVLBNzlSIyXk7T3eZ426Eur8AnOYe92iK3lHinADmRn3BT1voiQAVk2KhAgAX21foUOCPiWLeS2FKvJn3TSV00XQgOSXNT

> so now create controller and create there function (payment, success, cancel)

    public function payment(Request $request)
    {
        \Stripe\Stripe::setApiKey(config('stripe.sk'));

        $response = \Stripe\Checkout\Session::create([
            'line_items'  => [
                [
                    'price_data' => [
                        'currency'     => 'usd',
                        'product_data' => [
                            'name' => 'gimme money!!!!',
                        ],
                        'unit_amount'  => $request->price * 100, // $40 = 4000
                    ],
                    'quantity'   => 1,
                ],
            ],

            'mode'        => 'payment',
            'success_url' => route('stripe.success'),
            'cancel_url'  => route('stripe.cancel'),
        ]);

        return redirect()->away($response->url);
    }

![Alt text](<markdown/stripe payment.png>)
