<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Budget extends Model
{
    use HasFactory;

    protected $fillable=['id', 'name', 'description', 'status', 'created_at', 'updated_at', 'user_id', 'actual_price', 'estimated_price', 'paid_price', 'pending_price'
    ];
}
