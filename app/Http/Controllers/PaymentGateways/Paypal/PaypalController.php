<?php

namespace App\Http\Controllers\PaymentGateways\Paypal;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\PayPal as PayPalClient;

class PaypalController extends Controller
{
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
    public function success(Request $request)
    {
        $provider = new PayPalClient;

        $provider->setApiCredentials(config('paypal'));

        $paypalToken = $provider->getAccessToken();

        $response = $provider->capturePaymentOrder($request->token);

        if (isset($response['status']) && $response['status'] == 'COMPLETED') {
            return 'Paid Successfully!';
        }

        return redirect()->route('paypal.cancel');
    }
    public function cancel(Request $request)
    {
        return 'Payment faild';
    }
}
