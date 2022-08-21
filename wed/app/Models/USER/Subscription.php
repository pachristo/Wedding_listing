<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    use HasFactory;
    protected $table='subscriptions';

    protected $fillable=[
        'id', 'amount', 'currency', 'units', 'status', 'description', 'created_at', 'updated_at', 'plan_name', 'duration'
    ];
    
}
