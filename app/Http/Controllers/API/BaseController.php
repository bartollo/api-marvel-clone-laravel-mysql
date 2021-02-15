<?php

namespace App\Http\Controllers\API;

use Illuminate\Database\Eloquent\Collection;
use App\Http\Controllers\Controller as Controller;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;


/**
 * BaseController
 *
 * Classe com métodos de resposta da API
 *
 */
class BaseController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendResponse($result, $requestParameters)
    {
        //Verifica e valores do resultado X valores dos parâmetros
        if( $result instanceof Collection || $result instanceof AnonymousResourceCollection) {
            $totalResult = $result->count() > $requestParameters->getLimit() ? $requestParameters->getLimit() : $result->count();
            $count= $result->count();
        }else{
            $totalResult = 1;
            $count = 1;
        }

    	$response = [
            'code' => 200,
            'status' => 'OK',
            'copyright'=> '© 2021 MARVEL',
            'attributionText' => 'Data provided by Marvel. © 2021 MARVEL',
            'attributionHTML' => '<a href="http://marvel.com">Data provided by Marvel. © 2021 MARVEL</a>',
            'etag' => 'f0fbae65eb2f8f28bdeea0a29be8749a4e67acb3',
            'data' => [
                'offset'=> $requestParameters->getOffset(),
                'limit'=> $requestParameters->getLimit(),
                'total'=> $totalResult,
                'count'=> $count,
                'results'=> $result,
            ]
        ];


        return response()->json($response, 200);
    }


    /**
     * return error response.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendError($error, $errorMessages = [], $code = 404)
    {
    	$response = [
            'code' => $code,
            'status' => $error
        ];


        if(!empty($errorMessages)){
            $response['status'] = $errorMessages;
        }


        return response()->json($response, $code);
    }


}