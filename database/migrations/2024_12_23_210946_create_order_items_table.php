<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id(); // Auto-incrementing ID
            $table->foreignId('order_id')->constrained()->onDelete('cascade'); // Foreign key to orders table
            $table->foreignId('discount_id')->constrained('discounts')->onDelete('cascade'); // Foreign key to discounts table
            $table->integer('quantity'); // Quantity of the item
            $table->decimal('price', 10, 2); // Price of the item
            $table->timestamps(); // Created at and updated at timestamps
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_items');
    }
};
