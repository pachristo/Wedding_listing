<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class UserVendorResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {

        $reviews=[];
        $rating=[
            '1'=>0,
            '2'=>0,
            '3'=>0,
            '4'=>0,

            '5'=>0,
            'total'=>0
        ];
        if(count($this->list)>0)

         foreach($this->list as $key => $val){
             if (count($val->rating )>0) {

                foreach($val->rating as $key=>$val){
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

                 array_push($reviews,$val->comment);
                }


            }
         }



        return [
            'is_vendor' => $this->is_vendor,
            'is_couple' => $this->is_couple,
            'user_details' => [
                'id' => $this->id,
                'vendor_avatar' =>$this->avatar==''?null:asset('admin/admin/storage/app/public/user/').'/'.$this->avatar,
                'vendor_name' => $this->vendor_name,
                'vendor_address' => $this->vendor_address,
                'vendor_banner' => $this->vendor_banner==''?null:asset('admin/admin/storage/app/public/user/').'/'.$this->vendor_banner,
                'vendor_type' => $this->vendor_type,
                'email' => $this->email,
                'country_code' =>$this->country_code,
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
                'joined_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans(),
            ],
            'rating' => $rating,
            'review' => $reviews,

        ];
    }
}
