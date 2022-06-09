<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Settings;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        $settings=Settings::find(1);
        define('CURRENCY_CODE',$settings->currency_code);
         define('CURRENCY_SIGN',$settings->currency_sign);

    }
}
