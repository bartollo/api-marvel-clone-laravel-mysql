<?php

namespace App\Http\Resources;

use Illuminate\Support\Facades\URL;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * CharacterEventResource
 */
class CharacterEventResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            // @phpstan-ignore-next-line
            'resourceURI' => URL::to('api/events/'.$this->event->id),
            // @phpstan-ignore-next-line
            'name'=> $this->event->name,
        ];
    }


}