<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\User;

class TaskModel extends Model
{
    use HasFactory;

    protected $fillable = [
        'id', 'user_id', 'task_name', 'task_date', 'is_complete', 'created_at', 'updated_at'

    ];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }
}
