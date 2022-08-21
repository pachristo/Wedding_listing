<?php

namespace App\Http\Resources\USER;

use App\Http\Resources\USER\CategoryResource;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\USER\RatingResource;
use App\Http\Resources\USER\ListingCommentResource;
use App\Http\Resources\USER\UserVendorResource;
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

        $rating=[
            '1'=>0,
            '2'=>0,
            '3'=>0,
            '4'=>0,

            '5'=>0,
            'total'=>0
        ];
        $images = json_decode($this->images);
        $image_link = [];
        // return $images;
        if ($images != []) {
            foreach ($images as $key => $val) {

                foreach ($val as $key => $val) {
                    array_push($image_link, [$key => url('admin/admin/storage/app/public/listing/') . '/' . $val]);
                }

            }
        }
        $videos = json_decode($this->videos);
        $video_link = [];
        if ($images != []) {
            foreach ($videos as $key => $val) {

                foreach ($val as $key => $val) {
                    array_push($video_link, [$key => url('admin/admin/storage/app/public/listing/') . '/' . $val]);
                }
            }
        }
        if (count($this->rating )>0) {

            foreach($this->rating as $key=>$val){
                $rating['total']++;
             if(trim($val->rating_no)=='5'){
                $rating['5']++;
             }elseif(trim($val->rating_no)=='4'){
                $rating['4']++;
             }elseif(trim($val->rating_no)=='3'){
                $rating['3']++;
             }elseif(trim($val->rating_no)=='2'){
                $rating['2']++;
             }elseif(trim($val->rating_no)=='1'){
                $rating['1']++;
             }
            }


        }

        return [
            'id' => $this->id,
            'title' => $this->title,
            'category' => new CategoryResource($this->cat),
            'created_by' => [
                'by_admin'=>isset($this->user->vendor_name)?false:true,
                'by_vendor'=>isset($this->user->vendor_name)?true:false,
                'name'=>isset($this->user->vendor_name)? $this->user->vendor_name :'admin',
                'data'=> isset($this->user->vendor_name)? new UserVendorResource($this->user) :settings(),
            ],
            'address' => $this->address,
            'currency_sign' => CURRENCY_SIGN,
            'currency_code' => CURRENCY_CODE,
            'price' => number_format(trim(preg_replace("/[^a-zA-Z0-9\s]/", "", $this->price)), 2, '.', ','),
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
            'rating'=>[
                'count'=>$rating,
                'data'=>RatingResource::collection($this->rating)
            ],
            'comment'=>[
                'count'=>count($this->comment),
                'data'=>ListingCommentResource::collection($this->comment)
            ]

        ];
    }
}
