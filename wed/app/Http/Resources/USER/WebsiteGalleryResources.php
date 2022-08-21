<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class WebsiteGalleryResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $files = [];
        if ($this->media != '|' || $this->media != '') {
            $file_array = explode('|', $this->media);
            foreach ($file_array as $key => $val) {

                if ($val != '') {
                    $first_array = explode(',', $val);
                    $jk = explode(':', $first_array[0]);
                    $jc = explode(':', $first_array[1]);
                    array_push($files, [$jk[0] => $jk[1],'name'=>$jc[1], 'link' => url('/admin/admin/storage/app/public/website/gallery/').'/'.$jc[1]]);
                }
            }
        }
        return [

            //
            'id' => $this->id,
            'user_id' => $this->user_id,

            'file' => $files,
            'title' => $this->title,
            'updated_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->updated_at))->diffForHumans(),
            
        ];
    }
}
