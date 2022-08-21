<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->boolean('is_vendor')->nullable();
            $table->boolean('is_couple')->nullable();
            $table->string('country')->nullable();
            $table->string('country_code')->nullable();
            $table->string('vendor_name')->nullable();
            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('youtube')->nullable();
            $table->string('instagram')->nullable();
            $table->string('whatsapp')->nullable();
            $table->string('language')->nullable();
            $table->string('status')->nullable();
            $table->text('desc')->nullable();
            $table->string('avatar')->nullable();
            $table->string('phone')->nullable();
            $table->string('is_phone_verified')->nullable();
            $table->timestamp('email_verified_at')->nullable();

            $table->string('password');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
