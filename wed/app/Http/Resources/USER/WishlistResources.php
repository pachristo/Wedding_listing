<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\USER\UserVendorResource;
use App\Http\Resources\USER\ListingResource;

class WishlistResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
       if($this->listing!=null){
           return [
          'vendor'=> new UserVendorResource($this->listing->user),
           'listing'=> new ListingResource($this->listing)

       ]; 
       }
      
    }
}
