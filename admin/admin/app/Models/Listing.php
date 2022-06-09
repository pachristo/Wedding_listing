<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


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


}
