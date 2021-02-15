<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterStoryFactory;
use App\Http\Controllers\API\BaseController;
use App\Http\Requests\Parameters\CharacterRequestParameters;


/**
 * CharacterStoryController
 */
class CharacterStoryController extends BaseController
{


    /**
     * characterStory
     *
     * @var mixed
     */
    private $characterStory;



    /**
     * __construct
     *
     * @param  mixed $characterStory
     * @return void
     */
    public function __construct(CharacterStoryFactory $characterStory)
    {
        $this->characterStory = $characterStory::createApi();

    }


    /**
     * index
     *
     * @param  mixed $characterStory
     * @param  mixed $request
     * @return void
     */
    public function show(Character $character, CharacterRequest $request)
    {

        $requestParameters = new CharacterRequestParameters($request);

        $characterStory = $this->characterStory->find($character->id, $requestParameters);

        return $this->sendResponse($characterStory, $requestParameters);
    }
}