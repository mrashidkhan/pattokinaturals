<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIsMostBoughtToDiscountsTable extends Migration
{
    public function up()
    {
        Schema::table('discounts', function (Blueprint $table) {
            $table->boolean('is_most_bought')->default(false);
        });
    }

    public function down()
    {
        Schema::table('discounts', function (Blueprint $table) {
            $table->dropColumn('is_most_bought');
        });
    }
}
