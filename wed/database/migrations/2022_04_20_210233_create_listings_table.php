<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listings', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->string('cat_id')->nullable();
            $table->string('user_id')->nullable();
            $table->text('address')->nullable();
            $table->string('price')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('region')->nullable();
            $table->string('country')->nullable();
            $table->string('status')->nullable();
            $table->text('description')->nullable();
            $table->text('images')->nullable();
            $table->string('videos')->nullable();
            $table->string('map_latitude')->nullable();
            $table->string('map_longitude')->nullable();
            $table->string('facebook_link')->nullable();
            $table->string('twitter_link')->nullable();
            $table->string('instagram_link')->nullable();
            $table->string('youtube_link')->nullable();
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
        Schema::dropIfExists('listings');
    }
}
