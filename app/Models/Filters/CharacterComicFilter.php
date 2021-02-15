<?php

namespace App\Models\Filters;

use EloquentFilter\ModelFilter;
use App\Contracts\FilterInterface;

class CharacterComicFilter extends ModelFilter implements FilterInterface
{

    public $relations = [
        'charactersComics' => ['comic', 'character'],
    ];

    /**
     * name
     *
     * @param  mixed $name
     * @return void
     */
    public function name($name)
    {
        return $this->where(function($q) use ($name)
        {
            return $q->where('comics.name', 'LIKE', "%$name%");
        });
    }

    public function comic($comic_id)
    {
        return $this->related('comics', 'comic_id', '=', $comic_id);
    }

    public function character($character_id)
    {
        return $this->where('characters', 'character_id', '=', $character_id);
    }

}