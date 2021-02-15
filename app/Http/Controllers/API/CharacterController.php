<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Factories\CharacterFactory;
use App\Http\Requests\CharacterRequest;
use App\Http\Controllers\API\BaseController;
use App\Http\Requests\Parameters\CharacterRequestParameters;



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

        $requestParameters = new CharacterRequestParameters($request);

        $characters = $this->character->getAll($requestParameters);

        return $this->sendResponse($characters, $requestParameters);
    }

    /**
     * show
     *
     * @param  mixed $character
     * @param  mixed $request
     * @return void
     */
    public function show(Character $character, CharacterRequest $request)
    {

        $requestParameters = new CharacterRequestParameters($request);

        $character = $this->character->find($character->id, $requestParameters);

        return $this->sendResponse($character, $requestParameters);
    }

}