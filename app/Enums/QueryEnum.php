<?php

namespace App\Enums;

use BenSampo\Enum\Enum;
use App\Contracts\EnumInterface;

final class QueryEnum extends Enum implements EnumInterface
{
    const DEFAULT_LIMIT = 20;
    const DEFAULT_OFFSET = 0;
    const DEFAULT_ORDER_FIELD = 'id';
    const DEFAULT_ORDER_TYPE = 'ASC';

}