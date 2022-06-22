<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Template extends Model
{
    use HasFactory;
    protected $fillable=[
        'id', 'name', 'home', 'gallery', 'story', 'questions', 'description', 'home_code_mobile', 'gallery_code_mobile', 'story_code_mobile', 'questions_code_mobile', 'home_code_desktop', 'gallery_code_desktop', 'story_code_desktop', 'questions_code_desktop', 'created_at', 'updated_at'
    ];
}
