<?php

namespace App\Repositories;

use App\Enums\QueryEnum;
use App\Models\Character;
use App\Http\Resources\CharacterSerieResource;
use App\Contracts\CharacterRepositoryInterface;
use App\Http\Requests\Parameters\CharacterRequestParameters;

class CharacterSerieRepository implements CharacterRepositoryInterface
{
    public function find($id, CharacterRequestParameters $requestParameters)
    {
        $character = Character::with(['characterSeries' => function ($query) use ($requestParameters){
            $query->limit($requestParameters->getLimit())->offset($requestParameters->getOffset())->orderBy($requestParameters->getOrder(), QueryEnum::DEFAULT_ORDER_TYPE)->get();

        },'characterSeries.serie'])->whereHas('characterSeries.serie',function($query) use ($requestParameters){

            $query->filter($requestParameters->getQuery());

        })->findOrFail($id);

        return CharacterSerieResource::collection($character->characterSeries);
    }


}