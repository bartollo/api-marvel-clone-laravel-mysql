<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Factories\CharacterFactory;
use App\Http\Requests\CharacterRequest;
use App\Http\Controllers\API\BaseController;


/**
 * CharacterController
 */
class CharacterController extends BaseController
{

    /**
     * character
     *
     * @var mixed
     */
    private $character;


    /**
     * __construct
     *
     * @param  mixed $character
     * @return void
     */
    public function __construct(CharacterFactory $character)
    {
        $this->character = $character::createApi();
    }

    /**
     * index
     *
     * @param  mixed $request
     * @return void
     */
    public function index(CharacterRequest $request)
    {
        $character = $this->character->getAll($request->order, $request->limit, $request->offset);

        return $this->sendResponse($character, $request->limit, $request->offset, $character->count());
    }

    /**
     * show
     *
     * @param  mixed $character
     * @param  mixed $request
     * @return void
     */
    public function show(Character $character,CharacterRequest $request)
    {
        $limit=1;
        $offset=0;

        $character = $this->character->find($character->id,$request->order, $limit, $offset);

        return $this->sendResponse($character, $limit, $offset, $total=1);
    }

}