<?php

namespace App\Repositories;

use App\Models\Character;
use App\Models\CharacterSerie;
use App\Contracts\RepositoryInterface;
use App\Http\Resources\CharacterSerieResource;

class CharacterSerieRepository implements RepositoryInterface
{
    public function find($id, $orderBy = null, $limit = null, $offset= null)
    {
        $character = Character::with(['characterSeries' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'characterSeries.serie'])->findOrFail($id);

        return CharacterSerieResource::collection($character->characterSeries);
    }


}