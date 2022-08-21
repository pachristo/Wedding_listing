<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class GuestListResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        //   'firstname', 'lastname', 'gender', 'age_preference', 'group_name', 'phone', 'status', 'email', 'created_at', 'updated_at', 'user_id', 'relationship'
       return [
        'id' =>$this->id,
        'firstname' => $this->firstname,
        'lastname' =>$this->lastname,
        'gender' =>$this->gender=="m"?'male':'female',
        'age_preference'=>$this->age_preference=='a'?'adult':($this->age_preference=='t'?'teenager':'child'),
        'group_name'=>$this->group_name,
        'phone'=>$this->phone,
        'email'=>$this->email,
        'status'=>$this->status=="0"?"pending":($this->status=='1'?'accepted':'declined')
       ];
    }
}
