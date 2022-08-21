<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use App\Models\USER\Transaction;
use App\Models\USER\Listing;
use App\Models\USER\usedTemplate;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [

        'id', 'email', 'is_vendor', 'is_couple', 'country', 'country_code', 'vendor_name', 'facebook', 'twitter', 'youtube', 'instagram', 'whatsapp', 'language', 'status', 'description', 'avatar', 'phone', 'is_phone_verified', 'email_verified_at', 'password', 'remember_token', 'created_at', 'updated_at', 'token', 'username', 'vendor_banner', 'vendor_address', 'vendor_type', 'state', 'firstname', 'lastname', 'is_flagged', 'is_verified', 'plan_id', 'trans_id', 'next_due_date', 'sub_date', 'is_active', 'sub_count'


    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];



    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'is_vendor'=>'boolean', 'is_couple'=>'boolean','is_active'=>'boolean', 'is_flagged'=>'boolean', 'is_verified'=>'boolean'
    ];

    public function sub(){
        return $this->hasOne(Transaction::class,'id','trans_id');
    }



    public function list(){
        return $this->hasMany(Listing::class,'user_id','id')->latest('created_at')->where('is_approved','1');
    }

    public function websiteSub(){
        return $this->hasOne(usedTemplate::class,'user_id','id');
    }



}
