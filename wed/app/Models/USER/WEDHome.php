<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\Templates;
use App\Models\USER\User;
use App\Models\USER\usedTemplate;
class WEDHome extends Model
{
    use HasFactory;

    protected $fillable=[
        'id', 'user_id', 'cover_image', 'your_name', 'partner_name', 'event_name', 'date', 'time', 'venue', 'color', 'created_at', 'updated_at'
    ];

    public function template(){
      return  $this->hasOne(usedTemplate::class,'user_id', 'user_id')->where('sub_status','1');
    }
}
