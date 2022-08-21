<?php

namespace App\Http\Resources\ADMIN;

use Illuminate\Http\Resources\Json\JsonResource;

class AdminResource extends JsonResource
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
            'name'=>$this->name,
            'type'=>$this->type,
            'email'=>$this->email,
            'phone'=>$this->phone,
            'avatar'=>$this->avatar,
            'status'=>$this->status,
        ];
    }
}
