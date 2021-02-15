<?php

namespace App\Repositories;

use App\Enums\QueryEnum;
use App\Models\Character;
use App\Http\Resources\CharacterStoryResource;
use App\Contracts\CharacterRepositoryInterface;
use App\Http\Requests\Parameters\CharacterRequestParameters;

class CharacterStoryRepository implements CharacterRepositoryInterface
{
    public function find( $id, CharacterRequestParameters $requestParameters)
    {
        $character = Character::with(['charactersStories' => function ($query) use ($requestParameters){

            $query->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->get();

        },'charactersStories.story'])->whereHas('charactersStories.story',function($query) use ($requestParameters){

            $query->filter($requestParameters->getQuery());

        })->findOrFail($id);

        return CharacterStoryResource::collection($character->charactersStories);
    }


}