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
            // @phpstan-ignore-next-line
            'id' => $this->id,
            // @phpstan-ignore-next-line
            'name'=> $this->name,
            // @phpstan-ignore-next-line
            'description'=> $this->description,
            // @phpstan-ignore-next-line
            'modified' => $this->updated_at,
            // @phpstan-ignore-next-line
            'resourceURI' => URL::to('api/characters/'.$this->id),
            // @phpstan-ignore-next-line
            'thumbnail' => pathinfo($this->thumbnail),
            'comics' => [
                // @phpstan-ignore-next-line
                'available' => $this->charactersComics->count(),
                // @phpstan-ignore-next-line
                'collectionURI' => URL::to('api/characters/'.$this->id.'/comics'),
                // @phpstan-ignore-next-line
                'items' => CharacterComicResource::collection($this->charactersComics),
                // @phpstan-ignore-next-line
                'returned' => $this->charactersComics->count(),
            ],
            'series' => [
                // @phpstan-ignore-next-line
                'available' => $this->characterSeries->count(),
                // @phpstan-ignore-next-line
                'collectionURI' => URL::to('api/characters/'.$this->id.'/series'),
                // @phpstan-ignore-next-line
                'items' => CharacterSerieResource::collection($this->characterSeries),
                // @phpstan-ignore-next-line
                'returned' => $this->characterSeries->count(),
            ],
            'events' => [
                // @phpstan-ignore-next-line
                'available' => $this->charactersEvents->count(),
                // @phpstan-ignore-next-line
                'collectionURI' => URL::to('api/characters/'.$this->id.'/events'),
                // @phpstan-ignore-next-line
                'items' => CharacterEventResource::collection($this->charactersEvents),
                // @phpstan-ignore-next-line
                'returned' => $this->charactersEvents->count(),
            ],
            'stories' => [
                // @phpstan-ignore-next-line
                'available' => $this->charactersStories->count(),
                // @phpstan-ignore-next-line
                'collectionURI' => URL::to('api/characters/'.$this->id.'/stories'),
                // @phpstan-ignore-next-line
                'items' => CharacterStoryResource::collection($this->charactersStories),
                // @phpstan-ignore-next-line
                'returned' => $this->charactersStories->count(),
            ],
            // @phpstan-ignore-next-line
            'urls' => CharacterUrlResource::collection($this->charactersUrls),
        ];
    }
}