<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\Subscription;
class PaymentIntent extends Model
{
    use HasFactory;

    protected $fillable = [

        'id', 'user_id', 'trans_id', 'plan_id', 'created_at', 'updated_at', 'status', 'type', 'sub_date', 'nextDueDate', 'sub_count'
    ];
    

    public function sub(){
        return $this->hasOne(Subscription::class,'id','plan_id');
    }



    
}
