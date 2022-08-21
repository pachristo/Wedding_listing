<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WEDGallery extends Model
{
    use HasFactory;
    protected $fillable = [
        'id', 'user_id', 'title', 'media', 'created_at', 'updated_at'
    ];
}
