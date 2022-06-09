<?php

namespace App\Http\Resources;

use App\Http\Resources\CategoryResource;
use Illuminate\Http\Resources\Json\JsonResource;

class ListingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $images = json_decode($this->images);
        $image_link = [];
        if ($images != []) {
            foreach ($images as $key => $val) {

                foreach($val as $key=>$val){
                     array_push($image_link, [$key=>url('admin/storage/app/public/listing/') .'/'. $val]);
                }


            }
        }
        $videos = json_decode($this->videos);
        $video_link = [];
        if ($images != []) {
            foreach ($videos as $key => $val) {

                foreach($val as $key=>$val){
                    array_push($video_link, [$key=>url('admin/storage/app/public/listing/') .'/'. $val]);
               }
            }
        }
        if ($this->cat != null) {

        }

        return [
            'is_approved'=>$this->is_approved,
            'title' => $this->title,
            'category' => new CategoryResource($this->cat),
            'created_by' => null,
            'address' => $this->address,
            'currency_sign' => CURRENCY_SIGN,
            'currency_code' => CURRENCY_CODE,
            'price' => number_format($this->price, 2, '.', ','),
            'city' => $this->city,
            'state' => $this->state,
            'region' => $this->region,
            'country' => $this->country,
            'description' => $this->country,
            'images' => $image_link,
            'videos' => $video_link,
            'map_latitude' => $this->map_latitude,
            'map_longitude' => $this->map_longitude,
            'facebook_link' => $this->facebook_link,
            'twitter_link' => $this->twitter_link,
            'instagram_link' => $this->instagram_link,
            'youtube_link' => $this->youtube_link,
            'created_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans(),
            'is_featured' => $this->is_featured,
            'is_admin' => $this->is_admin,
            'is_promoted' => $this->is_amin,
        ];
    }
}
