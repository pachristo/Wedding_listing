<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
class BaseController extends Controller
{
    //

    public function sendResponse($data, $status = 200)
    {

        return response()->json([
            'status' => $status,
            'data' => $data,
        ]);
    }

    public function sendError($msg, $status = 404, $data = [])
    {

        return response()->json([
            'msg' => $msg,
            'data' => $data,
        ], $status);

    }

    public function ImageValidator($file, $name)
    {
        $extension = $file->getClientOriginalExtension();
        $fileSupport = ['jpg', 'jpeg', 'png', 'PNG', 'JPEG', 'JPG', 'gif', 'GIF'];
        if (in_array($extension, $fileSupport)) {
            //
            return $filename = Str::random(40). strtotime(date('d-m-y H:i:s')) . '.' . $extension;
        } else {
            return 'err';
        }
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
