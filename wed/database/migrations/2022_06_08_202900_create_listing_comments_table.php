<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListingCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listing_comments', function (Blueprint $table) {
            $table->id();
            $table->string('user_id')->nullable();
            $table->string('listing_id')->nullable();
            $table->text('comment')->nullable();
            $table->boolean('is_approved')->default(false)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('listing_comments');
    }
}
