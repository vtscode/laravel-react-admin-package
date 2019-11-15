<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller as Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendResponse($result, $message)
    {
    	// $response = [
        //     'success' => true,
        //     'data'    => 'a',
        //     'message' => $message,
        //     'total' => count($result)
        // ];
        $countData = count($result);
        $headers = [
            'Content-Type' => 'application/json',
            'Access-Control-Expose-Headers' => 'Content-Range',
            'Access-Control-Allow-Credentials' => true,
            'Access-Control-Allow-Origin' => '*',
            'Content-Range'=> "posts 0-5/$countData"
        ];



        return response()->json($result, 200,$headers);
    }


    /**

     * return error response.

     *

     * @return \Illuminate\Http\Response

     */

    public function sendError($error, $errorMessages = [], $code = 404)
    {
    	$response = [
            'success' => false,
            'message' => $error,
        ];

        if(!empty($errorMessages)){
            $response['data'] = $errorMessages;
        }

        return response()->json($response, $code);
    }
}
