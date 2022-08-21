<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;

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

        $settings=\DB::table('settings')->where('id','1')->first();
        define('CURRENCY_CODE',$settings->currency_code);
         define('CURRENCY_SIGN',$settings->currency_sign);
         define('ADDRESS',$settings->address);
         define('CONTACT_EMAIL',$settings->contact_email);
         define('SITENAME',$settings->sitename);
         define('SITELINK',$settings->sitelink);
         define('PHONE1',$settings->phone1);
         define('PHONE2',$settings->phone2);
         define('PHONE3',$settings->phone3);
         define('PAYPAL_KEY',$settings->paypalKey);
         define('PAYPAL_SECRET',$settings->paypalSecret);
         define('PAYSTACK_KEY',$settings->paystackkey);
         define('PAYSTACK_SECRET',$settings->paystackSecret);

        //
    }
}
