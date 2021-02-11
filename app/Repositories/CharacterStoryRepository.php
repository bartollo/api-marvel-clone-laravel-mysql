<?php

namespace App\Repositories;

use App\Models\Character;
use App\Models\CharacterStory;
use App\Contracts\RepositoryInterface;
use App\Http\Resources\CharacterStoryResource;

class CharacterStoryRepository implements RepositoryInterface
{
    public function find($id, $orderBy = null, $limit = null, $offset= null)
    {
        $character = Character::with(['charactersStories' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersStories.story','charactersStories.story.storyType'])->findOrFail($id);

        return CharacterStoryResource::collection($character->charactersStories);
    }


}