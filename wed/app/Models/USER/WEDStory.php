<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WEDStory extends Model
{
    use HasFactory;
    protected $fillable=[
        'id', 'user_id', 'text', 'media','title', 'created_at', 'updated_at'
    ];
}
