<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class WeddingHomeResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        // 'id', 'user_id', 'cover_image', 'your_name', 'partner_name', 'event_name', 'date', 'time', 'venue', 'color', 'created_at', 'updated_at'
        // /admin/admin/storage/app/public/website/
        return [
            'id'=>$this->id,
            'user_id' =>$this->user_id,
            'cover_image' =>url('/admin/admin/storage/app/public/website/').'/'.$this->cover_image,
            'your_name'=>$this->your_name,
            'partner_name'=>$this->partner_name,
            'event_name'=>$this->event_name,
            'date'=>$this->date,
            'time'=>$this->time,
            'venue'=>$this->venue,
            'color'=>$this->color,
            'updated_at'=>\Carbon\Carbon::createFromTimeStamp(strtotime($this->updated_at))->diffForHumans()
            

        ];
    }



}
