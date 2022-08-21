<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;
    protected $fillable=[
        'id', 'user_id', 'sub_id', 'unit', 'amount', 'txn_id', 'sub_count', 'created_at', 'updated_at', 'next_due_date', 'sub_date','gateway'
    ];
}
