<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController;
use App\Models\Settings;
use Illuminate\Http\Request;

class SettingsController extends BaseController
{

    public function index()
    {
        //
        $setting=Settings::find(1)->makeHidden(['created_at','id','updated_at']);
        return $this->sendResponse(['msg'=>'ok','data'=>$setting]);
    }


    public function update(Request $request, Settings $settings)
    {

        $settings->where('id',1)->update($request->all());

        return $this->sendResponse(['msg'=>'Settings Updated Successfully','data'=>null]);

    }


}
