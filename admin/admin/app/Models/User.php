<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    use HasFactory;
    protected $table = 'users';
    protected $fillable = [
        'id', 'email', 'is_vendor', 'is_couple', 'country', 'country_code', 'vendor_name', 'facebook', 'twitter', 'youtube', 'instagram', 'whatsapp', 'language', 'status', 'description', 'avatar', 'phone', 'is_phone_verified', 'email_verified_at', 'password', 'remember_token', 'created_at', 'updated_at', 'token', 'username', 'vendor_banner', 'vendor_address', 'vendor_type', 'state', 'firstname', 'lastname', 'is_flagged'
    ];
}
