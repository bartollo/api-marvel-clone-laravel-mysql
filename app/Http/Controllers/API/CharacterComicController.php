<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterComicFactory;
use App\Http\Controllers\API\BaseController;
use App\Http\Requests\Parameters\CharacterRequestParameters;

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
        $requestParameters = new CharacterRequestParameters($request);

        $characterComic = $this->characterComic->find($character->id, $requestParameters);

        return $this->sendResponse($characterComic, $requestParameters);
    }

}