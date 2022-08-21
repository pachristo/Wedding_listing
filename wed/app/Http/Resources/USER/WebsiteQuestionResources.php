<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class WebsiteQuestionResources extends JsonResource
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

            //
            'id' => $this->id,
            'user_id' => $this->user_id,
            'question' => $this->question,
            'answer' => $this->answer,

            'updated_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->updated_at))->diffForHumans(),
        ];
    }
}
