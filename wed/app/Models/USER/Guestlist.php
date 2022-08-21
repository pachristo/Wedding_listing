<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Guestlist extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname', 'lastname', 'gender', 'age_preference', 'group_name', 'phone', 'status', 'email', 'created_at', 'updated_at', 'user_id', 'relationship'
    ];
}
