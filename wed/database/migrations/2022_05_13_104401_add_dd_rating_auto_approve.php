<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDdRatingAutoApprove extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('settings', function (Blueprint $table) {
            //
            $table->boolean('is_rating_auto_approve')->default(true)->nullable();
            $table->boolean('is_listing_auto_approve')->default(true)->nullable();
            $table->boolean('is_vendor_account_auto_approve')->default(true)->nullable();
            $table->boolean('is_couple_account_auto_approve')->default(true)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('settings', function (Blueprint $table) {
            //
        });
    }
}
