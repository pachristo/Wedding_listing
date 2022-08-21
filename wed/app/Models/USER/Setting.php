<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;
    protected $fillable = [
        'contact_email', 'skype', 'phone1', 'phone2', 'phone3', 'address', 'flutterwave_key', 'flutterwave_secret', 'currency_code', 'currency_sign', 'maintenance_mode', 'created_at', 'updated_at', 'paypalKey', 'paypalSecret', 'paystackkey', 'paystackSecret', 'sitename', 'sitelink', 'is_rating_auto_approve', 'is_listing_auto_approve', 'is_vendor_account_auto_approve', 'is_couple_account_auto_approve', 'is_listing_comment_approved',
    ];

    protected $casts = [
        'is_rating_auto_approve' => 'boolean', 'is_listing_auto_approve' => 'boolean', 'is_vendor_account_auto_approve' => 'boolean', 'is_couple_account_auto_approve' => 'boolean', 'is_listing_comment_approved' => 'boolean'
    ];
    
}
