<?php

namespace App\Repositories;

use App\Models\Character;
use App\Models\CharacterComic;
use App\Contracts\RepositoryInterface;
use App\Http\Resources\CharacterResource;
use App\Http\Resources\CharacterComicResource;

class CharacterComicRepository implements RepositoryInterface
{
    public function find($id, $orderBy = null, $limit = null, $offset= null)
    {
        $character = Character::with(['charactersComics' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersComics.comic'])->findOrFail($id);

        return CharacterComicResource::collection($character->charactersComics);
    }

}