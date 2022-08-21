<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;

class BaseController extends Controller
{
    //

    public function sendResponse($data, $status = 200)
    {

        return response()->json([
            'status' => $status,
            'data' => $data,
            'general_info'=> [
                'settings' =>settings(),
                'category'=>categories(),
                'template'=>templates()
            ]

        ]);
    }

    public function sendError($msg, $status = 404 ,$data = [])
    {

        return response()->json([
        'status'=>$status,
            'msg' => $msg,

            'data' => $data,
            'general_info'=> [
                'settings' =>settings(),
                'category'=>categories(),
                'template'=>templates()
            ]
            ]);
    }

    public function paginate($item){
        return [

                "current_page" => $item->currentPage(),
                "first_page_url" =>  $item->getOptions()['path'].'?'.$item->getOptions()['pageName'].'=1',
                "prev_page_url" =>  $item->previousPageUrl(),
                "next_page_url" =>  $item->nextPageUrl(),
                "last_page_url" =>  $item->getOptions()['path'].'?'.$item->getOptions()['pageName'].'='.$item->lastPage(),
                "last_page" =>  $item->lastPage(),
                "per_page" =>  $item->perPage(),
                "total" =>  $item->total(),
                "path" =>  $item->getOptions()['path'],
        ];
    }
}
