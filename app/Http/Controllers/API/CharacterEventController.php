<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterEventFactory;
use App\Http\Controllers\API\BaseController;


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
        $characterEvent = $this->characterEvent->find($character->id, $request->order, $request->limit, $request->offset);

        return $this->sendResponse($characterEvent, $request->limit, $request->offset, $characterEvent->count());
    }
}