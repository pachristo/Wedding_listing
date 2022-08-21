<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CoupleSubscription extends Model
{
    use HasFactory;

    protected $fillable=[
     'planName', 'planDescription', 'duration', 'price', 'status', 'created_at', 'updated_at'
    ];
}
