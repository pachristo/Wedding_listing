<?php

namespace App\Models\USER;

use App\Models\USER\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListingComment extends Model
{
    use HasFactory;

    protected $fillable = [
        'id', 'user_id', 'listing_id', 'comment', 'is_approved', 'created_at', 'updated_at',
    ];
    protected $casts = [
        'is_approved',
    ];
    
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');

    }

}
