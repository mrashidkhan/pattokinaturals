<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;

class OrderController extends Controller
{
    public function myorders()
{
    // Get the authenticated user
    $user = Auth::user();

    // Check if the user is authenticated
    if (!$user) {
        return redirect()->route('login')->with('success', 'You must be logged in to view your orders.');
    }

    // Check if the customer exists
    $customer = $user->customer; // Assuming the relationship is set up correctly

    if (!$customer) {
        // Redirect to the cart.view route with a message if the customer does not exist
        return redirect()->route('cart.view')->with('success', 'Customer does not exist.');
    }

    // Get the customer ID
    $customerId = $customer->id;

    // Fetch orders for the customer
    $orders = Order::where('customer_id', $customerId)->get();

    // Return the view with the orders
    return view('front.myorders', compact('orders'));
}
public function show($id)
{
    // Retrieve the order by ID and ensure it belongs to the authenticated user
    $order = Order::with('items')->where('id', $id)->firstOrFail();

    return view('front.myorderitems', compact('order'));
}
}
