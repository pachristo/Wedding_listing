<?php

namespace App\Http\Controllers\API;

use App\Models\Subscription;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
class SubscriptionController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index( Subscription  $sub)
    {
        //
        $plan=$sub->where('status','1')->orderBy('units','desc')->get();

        return $this->sendResponse(['msg'=>'fetch successful','data'=>$plan]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $req, Subscription  $sub)
    {
        // 'id', 'amount', 'currency', 'units', 'status', 'description', 'created_at', 'updated_at'
        $validate=Validator::make($req->all(),[
            'amount'=>'required',
            'currency'=>'required',
            'units'=>'required',
            'description'=>'required',
            'plan_name'=>'required',
            'duration'=>'required'


        ]);

        if($validate->fails()) return $this->sendError(['errors'=>$validate->errors()],406,[]);
        $plan=$sub->create([
            'amount'=>$req->amount,
            'currency'=>$req->currency,
            'units'=>$req->units,
            'status'=>'1',
            'description'=>$req->description,
            'plan_name'=>$req->plan_name,
            'duration'=>$req->duration
        ]);

        return $this->sendResponse(['msg'=>'Plan created successfully','plan'=>$plan],200);

    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Subscription  $subscription
     * @return \Illuminate\Http\Response
     */
    public function update(Request $req, Subscription $sub)
    {
        $validate=Validator::make($req->all(),[
            'amount'=>'required',
            'currency'=>'required',
            'units'=>'required',
            'description'=>'required',
            'plan_name'=>'required',
            'duration'=>'required',




        ]);

        if($validate->fails()) return $this->sendError(['errors'=>$validate->errors()],406,[]);
        $plan=$sub->where('id',$req->id)->update([
            'amount'=>$req->amount,
            'currency'=>$req->currency,
            'units'=>$req->units,
            'status'=>'1',
            'description'=>$req->description,
            'plan_name'=>$req->plan_name,
            'duration'=>$req->duration
        ]);

        return $this->sendResponse(['msg'=>'Plan updated successfully'],200);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Subscription  $subscription
     * @return \Illuminate\Http\Response
     */
    public function destroy($id,Subscription $subscription)
    {
        $sub=$subscription->where('id',$id)->update(['status'=>'2']);
        return $this->sendResponse(['msg'=>'Plan deleted successfully'],200);
    }
}
