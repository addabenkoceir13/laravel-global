<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function shop()
    {
        $products = Product::all();
        return view('cart.shop', compact('products'));
    }

    public function cart()
    {
        Cart::content();
        return view('cart.cart');
    }

    public function addToCart(Request $request, $productId)
    {
        $product = Product::findOrFail($productId);

        Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => [
                'image' => $product->image
                ]
        ]);

        return redirect()->back()->with('success' , 'Product is added into the cart');
    }

    public function qtyIncrement($rowId)
    {
        $product = Cart::get($rowId);
        $updateQty = $product->qty + 1;

        Cart::update($rowId, $updateQty);

        return redirect()->back()->with('success', 'Product increment successfull!');
    }
    public function qtyDecrement($rowId)
    {
        $product = Cart::get($rowId);
        $updateQty = $product->qty - 1;
        if ($product->qty > 0) {
            Cart::update($rowId, $updateQty);
        }
        return redirect()->back()->with('success', 'Product decrement successfull!');
    }

    public function delete($rowId)
    {
        Cart::remove($rowId);

        return redirect()->back()->with('success', 'Products is deleted successfull');
    }
}
