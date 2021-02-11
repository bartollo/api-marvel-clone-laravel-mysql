<?php

namespace App\Http\Resources;

use Illuminate\Support\Facades\URL;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * CharacterResource
 */
class CharacterResource extends JsonResource
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
            'id' => $this->id,
            'name'=> $this->name,
            'description'=> $this->description,
            'modified' => $this->updated_at,
            'resourceURI' => URL::to('api/characters/'.$this->id),
            'thumbnail' => pathinfo($this->thumbnail),
            'comics' => [
                'available' => $this->charactersComics->count(),
                'collectionURI' => URL::to('api/characters/'.$this->id.'/comics'),
                'items' => CharacterComicResource::collection($this->charactersComics),
                'returned' => $this->charactersComics->count(),
            ],
            'series' => [
                'available' => $this->characterSeries->count(),
                'collectionURI' => URL::to('api/characters/'.$this->id.'/series'),
                'items' => CharacterSerieResource::collection($this->characterSeries),
                'returned' => $this->characterSeries->count(),
            ],
            'events' => [
                'available' => $this->charactersEvents->count(),
                'collectionURI' => URL::to('api/characters/'.$this->id.'/events'),
                'items' => CharacterEventResource::collection($this->charactersEvents),
                'returned' => $this->charactersEvents->count(),
            ],
            'stories' => [
                'available' => $this->charactersStories->count(),
                'collectionURI' => URL::to('api/characters/'.$this->id.'/stories'),
                'items' => CharacterStoryResource::collection($this->charactersStories),
                'returned' => $this->charactersStories->count(),
            ],
            'urls' => CharacterUrlResource::collection($this->charactersUrls),
        ];
    }
}