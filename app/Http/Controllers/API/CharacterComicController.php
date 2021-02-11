<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterComicFactory;
use App\Http\Controllers\API\BaseController;

/**
 * CharacterComicController
 */
class CharacterComicController extends BaseController
{


    /**
     * characterComic
     *
     * @var mixed
     */
    private $characterComic;



    /**
     * __construct
     *
     * @param  mixed $characterComic
     * @return void
     */
    public function __construct(CharacterComicFactory $characterComic)
    {
        $this->characterComic = $characterComic::createApi();

    }


    /**
     * index
     *
     * @param  mixed $characterComic
     * @param  mixed $request
     * @return void
     */

    public function show(Character $character, CharacterRequest $request)
    {

        $characterComic = $this->characterComic->find($character->id, $request->order, $request->limit, $request->offset);

        return $this->sendResponse($characterComic, $request->limit, $request->offset, $characterComic->count());
    }

}