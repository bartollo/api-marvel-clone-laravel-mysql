<?php

namespace App\Http\Resources;

use Illuminate\Support\Facades\URL;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * CharacterComicResource
 */
class CharacterComicResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request){

        return [
            // @phpstan-ignore-next-line
            'resourceURI' => URL::to('api/comics/'.$this->comic->id),
            // @phpstan-ignore-next-line
            'name'=> $this->comic->name,
        ];
    }

}