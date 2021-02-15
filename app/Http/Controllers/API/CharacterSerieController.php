<?php

namespace App\Http\Controllers\API;

use App\Models\Character;
use App\Http\Requests\CharacterRequest;
use App\Factories\CharacterSerieFactory;
use App\Http\Controllers\API\BaseController;
use App\Http\Requests\Parameters\CharacterRequestParameters;


/**
 * CharacterSerieController
 */
class CharacterSerieController extends BaseController
{


    /**
     * characterSerie
     *
     * @var mixed
     */
    private $characterSerie;



    /**
     * __construct
     *
     * @param  mixed $characterSerie
     * @return void
     */
    public function __construct(CharacterSerieFactory $characterSerie)
    {
        $this->characterSerie = $characterSerie::createApi();

    }


    /**
     * index
     *
     * @param  mixed $characterSerie
     * @param  mixed $request
     * @return void
     */
    public function show(Character $character, CharacterRequest $request)
    {

        $requestParameters = new CharacterRequestParameters($request);

        $characterSerie = $this->characterSerie->find($character->id, $requestParameters);

        return $this->sendResponse($characterSerie, $requestParameters);
    }
}