<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomersTable extends Migration
{
    // database/migrations/xxxx_xx_xx_create_customers_table.php
public function up()
{
    Schema::create('customers', function (Blueprint $table) {
        $table->id();
        $table->string('first_name');
        $table->string('last_name');
        $table->string('billing_address');
        $table->string('city');
        $table->string('postal_code');
        $table->string('country');
        $table->string('phone');
        $table->string('email')->unique(); // Assuming email is used for login
        $table->string('password'); // For authentication
        $table->timestamps();
    });
}

    public function down()
    {
        Schema::dropIfExists('customers');
    }
}