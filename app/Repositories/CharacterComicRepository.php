<?php

namespace App\Repositories;

use App\Enums\QueryEnum;
use App\Models\Character;
use App\Http\Resources\CharacterComicResource;
use App\Contracts\CharacterRepositoryInterface;
use App\Http\Requests\Parameters\CharacterRequestParameters;

class CharacterComicRepository implements CharacterRepositoryInterface
{
    public function find( $id, CharacterRequestParameters $requestParameters)
    {
        $character = Character::with(['charactersComics','charactersComics.comic' => function ($query) use ($requestParameters){

            $query->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->get();

        }])->whereHas('charactersComics.comic',function($query) use ($requestParameters){

            $query->filter($requestParameters->getQuery());

        })->findOrFail($id);

        return CharacterComicResource::collection($character->charactersComics);
    }

}