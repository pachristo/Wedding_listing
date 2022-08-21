<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\USER\UserCoupleResources;

class TaskResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        //  'id', 'user_id', 'task_name', 'task_date', 'is_complete', 'created_at', 'updated_at'
        $data=[
            'task_name' =>$this->task_name,
            'task_date' =>$this->task_date,
            'is_complete'=>$this->is_complete,

        ];




        return $data;
    }
}
