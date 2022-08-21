<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table='categories';

    protected $fillable = [
        'id', 'slug', 'name', 'image', 'description', 'status', 'created_at', 'updated_at'
    ];
}
