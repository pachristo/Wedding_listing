<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\User;
use App\Models\USER\WEDHome;
use  App\Models\USER\Templates;
class usedTemplate extends Model
{
    use HasFactory;

    protected $fillable=[
        'user_id', 'template', 'created_at', 'updated_at', 'plan_id', 'sub_status', 'subscribed_date', 'next_due_date'
    ];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');


    }
    public function templates(){
        return $this->hasOne(Templates::class,'id','template');

    }

    public function home(){
        return $this->hasOne(WEDHome::class,'user_id','user_id');
    }


}
