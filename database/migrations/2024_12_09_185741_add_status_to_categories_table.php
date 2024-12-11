<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusToCategoriesTable extends Migration
{
    public function up()
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->string('status')->default('active'); // You can set the default value as needed
        });
    }

    public function down()
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
}
