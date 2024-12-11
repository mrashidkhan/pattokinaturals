<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateDiscountsTableReplaceDiscountPercentageWithOriginalPrice extends Migration
{
    public function up()
    {
        Schema::table('discounts', function (Blueprint $table) {
            $table->dropColumn('discount_percentage');
            $table->decimal('original_price', 8, 2)->after('weight');
        });
    }

    public function down()
    {
        Schema::table('discounts', function (Blueprint $table) {
            $table->decimal('discount_percentage', 5, 2)->after('weight');
            $table->dropColumn('original_price');
        });
    }
}
