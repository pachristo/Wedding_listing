<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToBudgetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('budgets', function (Blueprint $table) {
            $table->string('actual_price')->default('0')->nullable();
            $table->string('estimated_price')->default('0')->nullable();
            $table->string('paid_price')->default('0')->nullable();
            $table->string('pending_price')->default('0')->nullable();
            //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('budgets', function (Blueprint $table) {
            //
        });
    }
}
