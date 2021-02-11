<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller as Controller;


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
    public function sendResponse($result, $limit, $offset, $count)
    {
        $totalResult = $count > $limit ? $limit : $count;

    	$response = [
            'code' => 200,
            'status' => 'OK',
            'copyright'=> '© 2021 MARVEL',
            'attributionText' => 'Data provided by Marvel. © 2021 MARVEL',
            'attributionHTML' => '<a href="http://marvel.com">Data provided by Marvel. © 2021 MARVEL</a>',
            'etag' => 'f0fbae65eb2f8f28bdeea0a29be8749a4e67acb3',
            'data' => [
                'offset'=> $offset,
                'limit'=> $limit,
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