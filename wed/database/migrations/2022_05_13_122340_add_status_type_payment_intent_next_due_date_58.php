<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusTypePaymentIntentNextDueDate58 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('payment_intents', function (Blueprint $table) {
            $table->string('sub_date')->nullable();
            $table->string('nextDueDate')->nullable();
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
        Schema::table('payment_intents', function (Blueprint $table) {
            //
        });
    }
}
