<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemplatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('templates', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->text('home')->nullable();
            $table->text('gallery')->nullable();
            $table->text('story')->nullable();
            $table->text('questions')->nullable();
            $table->text('description')->nullable();


            $table->text('home_code_mobile')->nullable();
            $table->text('gallery_code_mobile')->nullable();
            $table->text('story_code_mobile')->nullable();
            $table->text('questions_code_mobile')->nullable();
            $table->text('home_code_desktop')->nullable();
            $table->text('gallery_code_desktop')->nullable();
            $table->text('story_code_desktop')->nullable();
            $table->text('questions_code_desktop')->nullable();
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
        Schema::dropIfExists('templates');
    }
}
