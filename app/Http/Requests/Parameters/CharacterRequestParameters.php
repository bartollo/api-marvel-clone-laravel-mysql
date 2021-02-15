<?php

namespace App\Http\Requests\Parameters;

use App\Http\Requests\CharacterRequest;
use App\Contracts\RequestParametersInterface;

class CharacterRequestParameters implements RequestParametersInterface
{

  /**
     * order
     *
     * @var mixed
     */
    private $order;

    /**
     * offset
     *
     * @var mixed
     */
    private $offset;

    /**
     * limit
     *
     * @var mixed
     */
    private $limit;


    /**
     * query
     *
     * @var mixed
     */
    private $query;

    /**
     * __construct
     *
     * @param  mixed $request
     * @return void
     */

    public function __construct(CharacterRequest $request){

        $this->setLimit($request->limit);
        $this->setOrder($request->order);
        $this->setOffset($request->offset);
        $this->setQuery($this->removeOrderingAndLimiting($request));

    }

    /**
     * removeOrderingAndLimiting
     *
     * @param  mixed $request
     * @return void
     */
    public function removeOrderingAndLimiting(CharacterRequest $request):Array
    {

        $query = $request->all();

        unset($query["limit"]);
        unset($query["order"]);
        unset($query["offset"]);

        return $query;
    }

    /**
     * Get order
     *
     * @return  mixed
     */
    public function getOrder()
    {
        return $this->order;
    }

    /**
     * Set order
     *
     * @param  mixed  $order  order
     *
     * @return  self
     */
    public function setOrder($order)
    {
        $this->order = $order;

        return $this;
    }

    /**
     * Get offset
     *
     * @return  mixed
     */
    public function getOffset()
    {
        return $this->offset;
    }

    /**
     * Set offset
     *
     * @param  mixed  $offset  offset
     *
     * @return  self
     */
    public function setOffset($offset)
    {
        $this->offset = $offset;

        return $this;
    }

    /**
     * Get limit
     *
     * @return  mixed
     */
    public function getLimit()
    {
        return $this->limit;
    }

    /**
     * Set limit
     *
     * @param  mixed  $limit  limit
     *
     * @return  self
     */
    public function setLimit($limit)
    {
        $this->limit = $limit;

        return $this;
    }

    /**
     * Get query
     *
     * @return  mixed
     */
    public function getQuery()
    {
        return $this->query;
    }

    /**
     * Set query
     *
     * @param  mixed  $query  query
     *
     * @return  self
     */
    public function setQuery($query)
    {
        $this->query = $query;

        return $this;
    }
}