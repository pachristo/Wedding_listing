<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WEDQuestion extends Model
{
    use HasFactory;
    protected $fillable=[
        'id', 'user_id', 'question', 'answer', 'created_at', 'updated_at'
    ];
}
