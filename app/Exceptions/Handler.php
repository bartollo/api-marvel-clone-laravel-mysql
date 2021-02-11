<?php

namespace App\Exceptions;
use Exception;
use Throwable;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {

        /**
         *
         *   HTTP Status Code	Reason
         *   409	Limit greater than 100.
         *   409	Limit invalid or below 1.
         *   409	Invalid or unrecognized parameter.
         *  409	Empty parameter.
         *   409	Invalid or unrecognized ordering parameter.
         *   409	Too many values sent to a multi-value list filter.
         *   409	Invalid value passed to filter.
         */


        $this->renderable(function (NotFoundHttpException $e, $request) {

            $message = '';
            $statusCode =0;

            if ($this->isHttpException($e)) {
                $statusCode = $e->getStatusCode();
                $message = $e->getMessage();
                switch ($statusCode) {
                    case '404':
                        $message = 'errors/404';
                    case '500';
                        $message ='errors/500';
                    default:
                        $message ="We don't recognize the parameter id";
                }
            }

            return response()->json(['code'=> $statusCode,'message' =>  $message],$statusCode);

        });
    }

}