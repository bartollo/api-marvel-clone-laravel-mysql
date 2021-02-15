<?php

namespace App\Models\Filters;

use EloquentFilter\ModelFilter;
use App\Contracts\FilterInterface;

class CharacterFilter extends ModelFilter implements FilterInterface
{

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
            return $q->where('name', 'LIKE', "%$name%");
        });
    }


}