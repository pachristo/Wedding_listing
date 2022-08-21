<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\User;

use App\Models\USER\Rating;
use App\Models\USER\ListingComment;

class Listing extends Model
{
    use HasFactory;


    protected $table = 'listings';
    protected $fillable = [

        'title', 'cat_id', 'user_id',
        'address', 'price', 'city', 'state',
        'region', 'country', 'status', 'description',
        'images', 'videos', 'map_latitude', 'map_longitude',
        'facebook_link', 'twitter_link', 'instagram_link',
        'youtube_link', 'created_at', 'updated_at',
        'is_featured', 'is_admin', 'is_promoted',
    ];

    public function cat()
    {
        return $this->hasOne(Category::class, 'id', 'cat_id');
    }

    public function user(){
        return $this->hasOne(User::class,'id','user_id');

    }

    public function comment(){
        return $this->hasMany(ListingComment::class,'listing_id','id')->where('is_approved','1')->latest('created_at');
    }

    public function rating(){
        return $this->hasMany(Rating::class,'listing_id','id');
    }

    public function comment_unapprove(){
        return $this->hasMany(ListingComment::class,'listing_id','id')->where('is_approved','0')->latest('created_at');
    }

    public function rating_unapprove(){
        return $this->hasMany(Rating::class,'listing_id','id')->where('status','0')->latest('created_at');

    }


}
