<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class UserCoupleResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $sub=false;
        if($this->websiteSub!=null){
            if($this->websiteSub->sub_status=='1'){
                $sub=true;
            }
        }
        return [
            'is_vendor' => $this->is_vendor,
            'is_couple' => $this->is_couple,
            'user_details' => [
                'id' => $this->id,
                'firstname' => $this->firstname,
                'lastname'=>$this->lastname,
                'username' => $this->username,
                'email' => $this->email,
                'country_code' =>$this->country_code,
                'phone' => $this->phone,
                'country' => $this->country,
                'state' => $this->state,
                'media' => [
                    'youtube' => $this->youtube,
                    'facebook' => $this->facebook,
                    'whatsapp' => $this->whatsapp,
                    'instagram' => $this->instagram,
                    'twitter' => $this->twitter,
                ],
                'about' => $this->description,
                'avatar' => $this->avatar==''?null:asset('admin/admin/storage/app/public/user/').'/'.$this->avatar,
                'joined_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans(),


            ],
            'rating'=>null,
            'review'=>null,
            'is_website_subscription_status'=>$sub,

        ];
    }
}
