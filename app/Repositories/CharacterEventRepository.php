<?php

namespace App\Repositories;

use App\Enums\QueryEnum;
use App\Models\Character;
use App\Http\Resources\CharacterEventResource;
use App\Contracts\CharacterRepositoryInterface;
use App\Http\Requests\Parameters\CharacterRequestParameters;

class CharacterEventRepository implements CharacterRepositoryInterface
{
    public function find( $id, CharacterRequestParameters $requestParameters)
    {

        $character = Character::with(['charactersEvents' => function ($query) use ($requestParameters){

            $query->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->get();

        },'charactersEvents.event'])->whereHas('charactersEvents.event',function($query) use ($requestParameters){

            $query->filter($requestParameters->getQuery());

        })->findOrFail($id);

        return CharacterEventResource::collection($character->charactersEvents);
    }


}