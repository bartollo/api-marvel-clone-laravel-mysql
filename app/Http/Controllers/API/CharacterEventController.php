<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterEventFactory;
use App\Http\Controllers\API\BaseController;
use App\Http\Requests\Parameters\CharacterRequestParameters;



/**
 * CharacterEventController
 */
class CharacterEventController extends BaseController
{


    /**
     * characterEvent
     *
     * @var mixed
     */
    private $characterEvent;



    /**
     * __construct
     *
     * @param  mixed $characterEvent
     * @return void
     */
    public function __construct(CharacterEventFactory $characterEvent)
    {
        $this->characterEvent = $characterEvent::createApi();
    }


    /**
     * index
     *
     * @param  mixed $characterEvent
     * @param  mixed $request
     * @return void
     */
    public function show(Character $character, CharacterRequest $request)
    {
        $requestParameters = new CharacterRequestParameters($request);

        $characterEvent = $this->characterEvent->find($character->id, $requestParameters);

        return $this->sendResponse($characterEvent, $requestParameters);
    }


}