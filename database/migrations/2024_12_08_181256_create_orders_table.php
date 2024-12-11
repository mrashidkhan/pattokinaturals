<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('customer_name'); // Assuming you want to store customer name
            $table->string('customer_email'); // Assuming you want to store customer email
            $table->json('cart'); // Store cart items as JSON
            $table->decimal('total', 10, 2); // Total amount
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
