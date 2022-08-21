<?php

namespace App\Http\Resources\USER;

use Illuminate\Http\Resources\Json\JsonResource;

class BudgetResource extends JsonResource
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
            'name' => $this->name,
            'description' => $this->description,

            'estimated_price' => number_format(trim($this->estimated_price), 2, '.', ','),
            'actual_price' => number_format(trim($this->actual_price), 2, '.', ','),
            'paid_price' => number_format(trim($this->estimated_price), 2, '.', ','),
            'pending_price' => number_format(trim($this->actual_price), 2, '.', ','),

            'created_at' => \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans(),
        ];
    }
}
