<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\Listing;

class Wishlist extends Model
{
    use HasFactory;
    protected $fillable=[
        'id', 'listing_id', 'user_id', 'status', 'created_at', 'updated_at'
    ];

    public function listing(){
        return $this->hasOne(Listing::class,'id','listing_id');
    }


}
