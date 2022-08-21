<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusTypePaymentIntent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('payment_intents', function (Blueprint $table) {

            $table->string('status')->default('0')->nullable();
            $table->string('type')->nullable();
            // $table->string('')
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
