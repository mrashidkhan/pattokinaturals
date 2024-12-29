<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemovePasswordFromCustomersTable extends Migration
{
    public function up()
    {
        Schema::table('customers', function (Blueprint $table) {
            $table->dropColumn('password');
        });
    }

    public function down()
    {
        Schema::table('customers', function (Blueprint $table) {
            $table->string('password'); // Add back the password column if needed
        });
    }
}