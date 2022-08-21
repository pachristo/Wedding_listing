<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\USER\WeddingHomeResources;

use App\Http\Resources\USER\UserCoupleResources;
use App\Http\Resources\USER\TemplateResources;
class AllwebsiteResource extends JsonResource
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
            'id' => $this->id,
            'front' => new WeddingHomeResources($this->home),
            'template' => new TemplateResources($this->templates),
            'user' => new UserCoupleResources($this->user),


        ];
    }
}
