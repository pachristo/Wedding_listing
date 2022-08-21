<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class ListingCommentResource extends JsonResource
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
        'id' =>$this->id,
        'listing_id'=> $this->listing_id,
        'comment' =>$this->comment,
        'user' => $this->user->is_couple==true? new UserCoupleResources($this->user) : new UserVendorResource($this->user),
        'is_approved'=> $this->is_approved
       ];
    }
}
