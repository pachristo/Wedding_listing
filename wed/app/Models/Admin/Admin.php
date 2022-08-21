<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Admin extends Authenticatable
{
    use HasApiTokens, Notifiable;
    protected $table = 'admins';
    // protected $guard = 'admin';
    public $timestamps = false;
    protected $fillable = [
        'id', 'username', 'email', 'avatar',
        'status', 'type', 'password', 'name',
        'phone', 'created_at', 'updated_at',
    ];
}
