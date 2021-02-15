<?php

namespace App\Repositories;

use App\Enums\QueryEnum;
use App\Models\Character;
use App\Http\Resources\CharacterResource;
use App\Contracts\CharacterRepositoryInterface;
use App\Http\Requests\Parameters\CharacterRequestParameters;



class CharacterRepository implements CharacterRepositoryInterface
{

    public function getAll( CharacterRequestParameters $requestParameters)
    {

        $characters = Character::filter($requestParameters->getQuery())->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->get();

        return CharacterResource::collection($characters);

    }

    public function find( $id, CharacterRequestParameters $requestParameters)
    {

      $character = Character::filter($requestParameters->getQuery())
      ->with(['charactersComics','charactersComics.comic','charactersEvents','charactersEvents.event','characterSeries','characterSeries.serie','charactersStories','charactersStories.story','charactersStories.story.storyType','charactersUrls'])
      ->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->findOrFail($id);

      return new CharacterResource($character);
    }

}