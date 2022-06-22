<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TemplateResources extends JsonResource
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
            'name' => $this->name,
            'home' => trim($this->home)==''?'':url('/admin/storage/app/website/images/').'/'.$this->home,
            'gallery' =>  trim($this->gallery)==''?'':url('/admin/storage/app/website/images/').'/'.$this->gallery,
            'story' =>  trim($this->story)==''?'':url('/admin/storage/app/website/images/').'/'.$this->story,
            'questions' =>  trim($this->questions)==''?'':url('/admin/storage/app/website/images/').'/'.$this->questions,
            'description' => $this->description,
            'home_code_mobile' => $this->home_code_mobile,
            'gallery_code_mobile' => $this->gallery_code_mobile,
            'story_code_mobile' => $this->story_code_mobile,
            'questions_code_mobile' => $this->questions_code_mobile,
            'home_code_desktop' => $this->home_code_desktop,
            'gallery_code_desktop' => $this->gallery_code_desktop,
            'story_code_desktop' => $this->story_code_desktop,
            'questions_code_desktop' => $this->questions_code_desktop,
        ];

    }
}
