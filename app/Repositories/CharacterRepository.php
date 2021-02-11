<?php

namespace App\Repositories;

use App\Models\Character;
use Illuminate\Support\Facades\DB;
use App\Contracts\RepositoryInterface;
use App\Http\Requests\CharacterRequest;
use Illuminate\Database\Query\Builder;
use App\Http\Resources\CharacterResource;

class CharacterRepository implements RepositoryInterface
{

    public function getAll($orderBy = null, $limit = null, $offset= null)
    {

        $query = Character::query();

        if($offset !== null){
            $query = $query->offset($offset);
        }

        if($limit !== null){
            $query = $query->take($limit);
        }

        if($orderBy !== null){
            $query = $query->orderBy($orderBy,'asc');
        }

        return CharacterResource::collection($query->get());
    }

    public function find($id, $orderBy = null, $limit = null, $offset= null)
    {

      $character = Character::with(['charactersComics','charactersComics.comic','charactersEvents','charactersEvents.event','characterSeries','characterSeries.serie','charactersStories','charactersStories.story','charactersStories.story.storyType','charactersUrls'])->findOrFail($id);

      return new CharacterResource($character);
    }

}