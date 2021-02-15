<?php

namespace App\Http\Requests;

use App\Enums\QueryEnum;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Contracts\RequestInterface;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Concerns\InteractsWithInput;
use Illuminate\Http\Exceptions\HttpResponseException;

/**
 * CharacterRequest
 *
 * Classe padrão que valida todos os Requests
 *
 * Valida Seguintes Erros:
 *
 * 409	Limit greater than 100.
 * 409	Limit invalid or below 1.
 * 409	Invalid or unrecognized parameter.
 * 409	Invalid or unrecognized ordering parameter.
 * 409	Too many values sent to a multi-value list filter.
 * 409	Invalid value passed to filter.
 */

class CharacterRequest extends FormRequest implements RequestInterface
{
    use InteractsWithInput;

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'order' => ['string',Rule::in(['name', 'id'])],
            'limit' => 'numeric|max:100|min:1',
            'offset' => 'numeric|max:99|min:0|lte:limit',
            'name' => 'string|max:100',
        ];
    }

    /**
     * prepareForValidation
     *
     * Insere valor padrão caso o parâmetro venha nulo
     *
     * @return void
     */
    protected function prepareForValidation()
    {
        $this->merge(
            [
                // @phpstan-ignore-next-line
                'order' => is_null($this->order) ? QueryEnum::DEFAULT_ORDER_FIELD: $this->order,
                // @phpstan-ignore-next-line
                'limit' => is_null($this->limit) ? QueryEnum::DEFAULT_LIMIT: $this->limit,
                // @phpstan-ignore-next-line
                'offset' => is_null($this->offset) ? QueryEnum::DEFAULT_OFFSET: $this->offset,
            ]
        );

    }


    public function messages()
    {
        return [
            'name.string'  => 'Invalid value passed to filter',
            'name.max' => 'Invalid value passed to filter',
            'order.string' => 'Invalid value passed to filter',
            'limit.numeric'  => 'Invalid value passed to filter',
            'offset.numeric'  => 'Invalid value passed to filter',
            'order.in' => 'Invalid or unrecognized ordering parameter',
            'limit.max' => 'Limit greater than 100',
            'limit.min' => 'Limit invalid or below 1',
            'offset.lte' => 'Invalid or unrecognized ordering parameter',
        ];
    }

    protected function failedValidation(Validator $validator) {
        $response = [
            'message' => $validator->errors()->first(),
        ];
        throw new HttpResponseException(response()->json($response, 409));
    }

}