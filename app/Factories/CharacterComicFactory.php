<?php

namespace App\Factories;

use App\Contracts\FactoryInterface;
use App\Repositories\CharacterComicRepository;


/**
 * CharacterComicFactory
 */
class CharacterComicFactory implements FactoryInterface
{
    /**
     * create
     *
     * @return void
     */
    static public function create(){

    }

    /**
     * createApi
     *
     * @return void
     */
    static public function createApi(){
        return new CharacterComicRepository();
    }
}