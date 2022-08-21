<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Models\USER\Guestlist;
use App\Models\USER\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\USER\GuestListResources;

class GuestlistController extends BaseController
{
    //

    public function create(Request $req, Guestlist $guest)
    {
        //  'firstname', 'lastname', 'gender', 'age_preference', 'group_name', 'phone', 'status', 'email', 'created_at', 'updated_at', 'user_id', 'relationship'
        $validate = Validator::make($req->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'First & Last name Required'], 422, []);
        }




        $validate = Validator::make($req->all(), [
            'gender' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'Gender Required'], 422, []);
        }

        $validate = Validator::make($req->all(), [
            'group_name' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'Group name Required'], 422, []);
        }

        $data = $guest->create([
            'firstname' => ucwords(strtolower($req->firstname)),
            'lastname' => ucwords(strtolower($req->lastname)),
            'gender' => strtolower($req->gender),
            'age_preference' => strtolower($req->age_preference),
            'group_name' => $req->group_name,
            'phone' => $req->phone,
            'email' => $req->email,
            'user_id' => $req->user_id,
            'status'=> '0'
        ]);

        return $this->sendResponse(['msg' => 'ok','data' => [
            'guest'=> new GuestListResources($data)
        ]]);

    }

    public function update(Request $req, Guestlist $guest)
    {
        //  'firstname', 'lastname', 'gender', 'age_preference', 'group_name', 'phone', 'status', 'email', 'created_at', 'updated_at', 'user_id', 'relationship'
        $validate = Validator::make($req->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'First & Last name Required'], 422, []);
        }




        $validate = Validator::make($req->all(), [
            'gender' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'Gender Required'], 422, []);
        }

        $validate = Validator::make($req->all(), [
            'group_name' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError(['msg' => 'Group name Required'], 422, []);
        }

        $data = $guest->where('id',$req->id)->update([
            'firstname' => ucwords(strtolower($req->firstname)),
            'lastname' => ucwords(strtolower($req->lastname)),
            'gender' => strtolower($req->gender),
            'age_preference' => strtolower($req->age_preference),
            'group_name' => $req->group_name,
            'phone' => $req->phone,
            'email' => $req->email,


        ]);

        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => [

        ]]);

    }

    public function getGuestById($id){
        $list=Guestlist::find($id);
        if($list!=null){
            return $this->sendResponse(['msg' => 'ok','data' => [
                'guest'=>new GuestListResources($list)
            ]]);
        }
        return $this->sendError(['msg' => 'Record not found'], 404, []);
    }



    public function showGuestList($id,$paginate=30){
        $list=Guestlist::where('user_id',$id)->latest('created_at')->paginate($paginate);
        $data=[
            'pending'=>count(Guestlist::where('user_id',$id)->where('status','0')->get()),
            'accepted'=>count(Guestlist::where('user_id',$id)->where('status','1')->get()),
            'declined'=>count(Guestlist::where('user_id',$id)->where('status','2')->get()),
        ];
        if($list!=null){
            return $this->sendResponse(['msg' => 'ok','data' => [
                'guest'=> GuestListResources::collection($list->items()),

                'pagination' => $this->paginate($list),

                'status'=>[
                    'count'=>$data,
                    'total'=>($data['pending']+$data['accepted']+$data['declined'])
                ]
            ]]);
        }
        return $this->sendError(['msg' => 'Record not found'], 404, []);
    }


    public function delGuestById($id){
        $list=Guestlist::where('id',$id)->delete();

            return $this->sendResponse(['msg' => 'Data deleted successfully','data' => [

            ]]);


    }


    public function updateStatus($id,$status){
        $list=Guestlist::where('id',$id)->update(['status'=>$status]);

            return $this->sendResponse(['msg' => 'Status Updated successfully','data' => [

            ]]);


    }

}


