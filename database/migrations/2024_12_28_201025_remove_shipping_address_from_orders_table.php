<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveShippingAddressFromOrdersTable extends Migration
{
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn('shipping_address');
        });
    }

    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->string('shipping_address')->nullable(); // Adjust the type as needed
        });
    }
}
