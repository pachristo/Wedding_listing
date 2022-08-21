<?php

namespace App\Models\USER;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\USER\CoupleSubscription;
class CoupleSubIntent extends Model
{
    use HasFactory;

    protected $fillable=[
        'user_id', 'trans_id', 'plan_id', 'status', 'sub_date', 'nextDueDate', 'created_at', 'updated_at'
    ];

    public function sub(){

        return $this->hasOne(CoupleSubscription::class,'id', 'plan_id');

    }
}
