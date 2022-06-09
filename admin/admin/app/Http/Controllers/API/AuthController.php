<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController;
use App\Models\Admin;

use Illuminate\Support\Facades\Validator;
use App\Http\Resources\AdminResource;
use Illuminate\Support\Facades\Auth;
class AuthController extends BaseController
{
    //


    public function register(Request $request, Admin $admin)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $validate = Validator::make($request->all(), [
            'email' => 'email|required|unique:admins,email',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $validate = Validator::make($request->all(), [
            'password' => 'required|min:6,max:14|confirmed',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $validate = Validator::make($request->all(), [
            'type' => 'required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $admin->create(
            [
                'username' => $request->username,
                'email' => trim(strtolower($request->email)),
                'avatar' => '',
                'status' => '0', 'type' => trim($request->type),
                'password' => bcrypt($request->password),
                'name' => ucwords(strtolower($request->name)),

            ]
        );

        return $this->sendResponse([
            'msg' => 'Account Created Successfully',
        ]);

    }
    public function login(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (auth()->attempt($data)) {
            $user = auth()->user();
            $token = auth()->user()->createToken('admin')->accessToken;


                return $this->sendResponse([
                    'token' => $token,
                    'user' => new AdminResource($user),
                ]);


        } else {
            return $this->sendError([
                'msg' => 'Invalid Details',
            ], 406);

        }
    }





}
