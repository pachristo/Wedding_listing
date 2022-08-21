<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\USER\UserVendor;
use App\Http\Resources\USER\UserCouple;
use App\Http\Resources\USER\ListingResource;
class RatingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        if ($this->user != null ) {
            $data= [
                'user' => $this->user->is_couple==true? new UserCouple($this->user) : new UserVendor($this->user),
                // 'listing'=> new ListingResource($this->listing),
                'comment' =>$this->comment,
                'rating'=>$this->rating_no,
                'approval_status'=>$this->status=='0'?false:true,

            ];

            return $data;
        }

    }
}
