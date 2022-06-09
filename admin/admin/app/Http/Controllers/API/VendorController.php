<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\UserCoupleResources;
use App\Http\Resources\UserVendorResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class VendorController extends BaseController
{

    public function vendor_register(Request $req)
    {

        $data_validate = [];

        //
        $validator = Validator::make($req->all(), [
            'vendor_name' => 'required|max:35,min:7',
        ], [
            'vendor_name.required' => 'Company name required',
            'vendor_name.max' => 'Company name should be at least 7 to 35 Characters',
            'vendor_name.min' => 'Company name should be at least 7 to 35 Characters',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // nature of Business
        $validator = Validator::make($req->all(), [
            'vendor_type' => 'required|max:35,min:7',
        ], [
            'vendor_type.required' => 'Vendor Type required',
            'vendor_type.max' => 'Vendor Type should be at least 7 to 35 Characters',
            'vendor_type.min' => 'Vendor Type should be at least 7 to 35 Characters',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // email validation
        $validator = Validator::make($req->all(), [
            'email' => 'email|required|unique:users',
        ], [
            'email.email' => 'Bad email format',
            'email.required' => 'Email required',
            'email.unique' => 'Email Already Exist',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // phone number validation
        $validator = Validator::make($req->all(), [
            'phone' => 'required',
        ], [

            'phone.required' => 'Phone number  required',

        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // password validation
        $validator = Validator::make($req->all(), [
            'password' => 'required|confirmed|min:6,max:14',
        ], [
            'password.required' => 'Password is required',
            'password.confirmed' => 'password do not match',
            'password.max' => 'Password must be 6 to 14 characters',
            'password.min' => 'Password must be 6 to 14 characters',
        ]
        );
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        $data_validate = [
            'password' => bcrypt($req->password),
            'vendor_name' => ucwords(strtolower($req->vendor_name)),
            'vendor_address' => $req->vendor_address,
            'email' => strtolower(trim($req->email)),
            'phone' => trim($req->phone),
            'is_vendor' => true,
            'is_couple' => false,

        ];

        $user = User::create($data_validate);

        $data = [

            'user' => new UserVendorResource($user),
        ];
        return $this->sendResponse($data);
    }

    public function couple_register(Request $req)
    {

        $data_validate = [];

        $validator = Validator::make($req->all(), [
            'firstname' => 'required|max:35,min:7',
            'lastname' => 'required|max:35,min:7',

        ], [
            'firstname.required' => 'Firstname required',
            'firstname.max' => 'Firstname should be at least 7 to 35 Characters',
            'firstname.min' => 'Firstname should be at least 7 to 35 Characters',
            'lastname.required' => 'Lastname required',
            'lastname.max' => 'Lastname should be at least 7 to 35 Characters',
            'lastname.min' => 'Lastname should be at least 7 to 35 Characters',
        ]);

        // validate name
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        $validator = Validator::make($req->all(), [
            'email' => 'email|required|unique:users',

        ], [
            'email.email' => 'Bad email format',
            'email.required' => 'Email required',
            'email.unique' => 'Email Already Exist',
        ]);

        // validate email
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        $validator = Validator::make($req->all(), [

            'password' => 'required|confirmed|min:6,max:14',
        ], [
            'password.required' => 'Password is required',
            'password.confirmed' => 'password do not match',
            'password.max' => 'Password must be 6 to 14 characters',
            'password.min' => 'Password must be 6 to 14 characters',
        ]
        );

        // validate password
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        $validator = Validator::make($req->all(), [
            'username' => 'required|max:35,min:3|unique:users',

        ], [
            'username.required' => ' username required',
            'username.max' => 'username should be at least 7 to 35 Characters',
            'username.min' => 'username should be at least 7 to 35 Characters',
            'username.unique' => "Username already exist!",
        ]);

        // validate vendorname
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // phone number validation
        $validator = Validator::make($req->all(), [
            'phone' => 'required',
        ], [

            'phone.required' => 'Phone number  required',

        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        $data_validate = [
            'password' => bcrypt($req->password),
            'firstname' => ucwords(strtolower($req->firstname)),
            'lastname' => ucwords(strtolower($req->lastname)),
            'email' => strtolower(trim($req->email)),
            'username' => strtolower(trim($req->username)),
            'phone' => trim($req->phone),
            'is_vendor' => false,
            'is_couple' => true,

        ];

        $user = User::create($data_validate);

        $data = [

            'user' => new UserCoupleResources($user),

        ];
        return $this->sendResponse($data);
    }

    public function flag($id, $status)
    {
        $status=$status=='0'?false:true;
        User::where('id', $id)->update(['is_flagged' => $status]);

        $msg=$status==true?'flagged':'Unflagged';

        return $this->sendResponse([
            'msg'=>'User account '.$msg.'  successfully',
            'data'=>null
        ]);
    }
    public function delete($id)
    {

        User::where('id', $id)->delete();


        return $this->sendResponse([
            'msg'=>'User account Deleted  successfully',
            'data'=>null
        ]);
    }

}
