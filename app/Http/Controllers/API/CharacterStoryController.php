<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterStoryFactory;
use App\Http\Controllers\API\BaseController;


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

        $characterStory = $this->characterStory->find($character->id, $request->order, $request->limit, $request->offset);

        return $this->sendResponse($characterStory, $request->limit, $request->offset, $characterStory->count());
    }
}