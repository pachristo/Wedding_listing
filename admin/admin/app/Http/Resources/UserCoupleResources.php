<?php

namespace App\Http\Resources;

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
        return [
            'is_vendor' => $this->is_vendor,
            'is_couple' => $this->is_couple,
            'user_details' => [
                'id' => $this->id,
                'firstname' => $this->firstname,
                'lastname'=>$this->lastname,
                'username' => $this->username,
                'email' => $this->email,
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
                'avatar' => null,
                'joined_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans(),


            ],
            'rating'=>null,
            'review'=>null

        ];
    }
}
