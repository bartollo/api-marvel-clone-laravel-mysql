<?php

namespace App\Http\Resources;

use Illuminate\Support\Facades\URL;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * CharacterUrlResource
 */
class CharacterUrlResource extends JsonResource
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
            'url' => $this->url,
            // @phpstan-ignore-next-line
            'type' => $this->character_url_type_name
        ];
    }
}