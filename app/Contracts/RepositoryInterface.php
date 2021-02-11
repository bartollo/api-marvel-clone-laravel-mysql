<?php

namespace App\Contracts;

interface RepositoryInterface
{
   /**
    * find
    *
    * @param  mixed $id
    * @param  mixed $orderBy
    * @param  mixed $limit
    * @param  mixed $offset
    * @return void
    */
   public function find($id, $orderBy = null, $limit = null, $offset= null);

}