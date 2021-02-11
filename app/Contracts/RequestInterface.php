<?php

namespace App\Contracts;

interface RequestInterface
{
    /**
     * authorize
     *
     * @return void
     */
    public function authorize();

    /**
     * rules
     *
     * @return void
     */
    public function rules();
}