<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        // Retrieve the cart from the session
        $cart = session()->get('cart', []);

        return view('cart.index', compact('cart'));
    }

    public function add(Request $request)
    {
        // Validate the request
        $request->validate([
            'id' => 'required|integer',
            'name' => 'required|string',
            'price' => 'required|numeric',
            'quantity' => 'required|integer|min:1',
        ]);

        // Get the current cart from the session
        $cart = session()->get('cart', []);

        // Check if the item already exists in the cart
        if (isset($cart[$request->id])) {
            $cart[$request->id]['quantity'] += $request->quantity;
        } else {
            $cart[$request->id] = [
                'name' => $request->name,
                'price' => $request->price,
                'quantity' => $request->quantity,
            ];
        }

        // Save the cart back to the session
        session()->put('cart', $cart);

        return redirect()->route('cart.index')->with('success', 'Item added to cart successfully!');
    }

    public function remove(Request $request)
    {
        // Get the current cart from the session
        $cart = session()->get('cart', []);

        // Remove the item from the cart
        if (isset($cart[$request->id])) {
            unset($cart[$request->id]);
        }

        // Save the cart back to the session
        session()->put('cart', $cart);

        return redirect()->route('cart.index')->with('success', 'Item removed from cart successfully!');
    }

    public function checkout(Request $request)
    {
        // Retrieve the cart from the session
        $cart = session()->get('cart', []);

        // Check if the cart is empty
        if (empty($cart)) {
            return redirect()->route('cart.index')->with('error', 'Your cart is empty. Please add items to your cart before checking out.');
        }

        // Calculate the total amount
        $total = 0;
        foreach ($cart as $item) {
            $total += $item['price'] * $item['quantity'];
        }

        // Here you can process the order, e.g., save it to the database
        // For demonstration, we'll save the order details
        $order = new Order();
        $order->customer_name = $request->input('customer_name'); // Assuming you have this input
        $order->customer_email = $request->input('customer_email'); // Assuming you have this input
        $order->cart = json_encode($cart); // Store cart items as JSON
        $order->total = $total; // Total amount
        $order->save();

        // Clear the cart
        session()->forget('cart');

        // Redirect to a confirmation page or show a success message
        return redirect()->route('cart.index')->with('success', 'Thank you for your order! Your items have been successfully checked out.');
    }
}
