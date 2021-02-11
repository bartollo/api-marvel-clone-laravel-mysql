<?php

namespace App\Http\Resources;

use Illuminate\Support\Facades\URL;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * CharacterStoryResource
 */
class CharacterStoryResource extends JsonResource
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
            'resourceURI' => URL::to('api/stories/'.$this->story->id),
            'name'=> $this->story->name,
            'type' => $this->story->story_type_name
        ];
    }
}