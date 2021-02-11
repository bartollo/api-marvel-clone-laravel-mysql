<?php

namespace App\Repositories;

use App\Models\Character;
use App\Models\CharacterEvent;
use App\Contracts\RepositoryInterface;
use App\Http\Resources\CharacterEventResource;

class CharacterEventRepository implements RepositoryInterface
{
    public function find($id, $orderBy = null, $limit = null, $offset= null)
    {
        $character = Character::with(['charactersEvents' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersEvents.event'])->findOrFail($id);

        return CharacterEventResource::collection($character->charactersEvents);
    }

}