<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\User;
use App\Models\USER\Listing;
class Rating extends Model
{
    use HasFactory;

    protected $fillable=[
        'id', 'user_id', 'type', 'rating_no', 'listing_id', 'status', 'created_at', 'updated_at','comment'
    ];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }

    public function listing(){
        return $this->hasOne(Listing::class,'id','listing_id');
    }

 

}
