<?php

namespace App\Contracts;

use App\Http\Requests\Parameters\CharacterRequestParameters;

interface CharacterRepositoryInterface
{

   /**
    * find
    *
    * @param  mixed $id
    * @param  mixed $requestParameters
    * @return void
    */
   public function find( $id , CharacterRequestParameters $requestParameters);

}