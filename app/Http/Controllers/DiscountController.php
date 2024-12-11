<?php

namespace App\Http\Controllers;

use App\Models\Discount;
use Illuminate\Http\Request;

class DiscountController extends Controller
{
    // Display a listing of the discounts
    public function index()
    {
        $discounts = Discount::with('product')->get();
        return view('discounts.index', compact('discounts'));
    }

    // Show the form for creating a new discount
    public function create()
    {
        return view('discounts.create');
    }

    // Store a newly created discount in storage
    public function store(Request $request)
    {
        // Validate the request
        $request->validate([
            'product_id' => 'required|exists:products,id',
            'weight' => 'required|numeric',
            'original_price' => 'required|numeric',
            'discounted_price' => 'required|numeric',
            'is_most_bought' => 'boolean',
        ]);

        // If the discount is marked as "most bought", unset the flag for other discounts
        if ($request->is_most_bought) {
            Discount::where('product_id', $request->product_id)
                ->update(['is_most_bought' => false]);
        }

        // Create the discount
        Discount::create($request->all());

        return redirect()->route('discounts.index')->with('success', 'Discount created successfully.');
    }

    // Show the form for editing the specified discount
    public function edit($id)
    {
        $discount = Discount::findOrFail($id);
        return view('discounts.edit', compact('discount'));
    }

    // Update the specified discount in storage
    public function update(Request $request, $id)
    {
        // Validate the request
        $request->validate([
            'product_id' => 'required|exists:products,id',
            'weight' => 'required|numeric',
            'original_price' => 'required|numeric',
            'discounted_price' => 'required|numeric',
            'is_most_bought' => 'boolean',
        ]);

        // Find the discount being updated
        $discount = Discount::findOrFail($id);

        // If the discount is being marked as "most bought"
        if ($request->is_most_bought && !$discount->is_most_bought) {
            // Unset the flag for other discounts of the same product
            Discount::where('product_id', $request->product_id)
                ->where('id', '!=', $id) // Exclude the current discount
                ->update(['is_most_bought' => false]);
        }

        // Update the discount with the new data
        $discount->update($request->all());

        return redirect()->route('discounts.index')->with('success', 'Discount updated successfully.');
    }

    // Remove the specified discount from storage
    public function destroy($id)
    {
        $discount = Discount::findOrFail($id);
        $discount->delete();

        return redirect()->route('discounts.index')->with('success', 'Discount deleted successfully.');
    }
}
