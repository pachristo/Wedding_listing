<?php

namespace App\Http\Controllers\API\ADMIN;

use App\Http\Controllers\API\BaseController;
use App\Models\Admin\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ADMIN\AdminResource;
use Illuminate\Support\Facades\Auth;
class AdminController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request, Admin $admin)
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
    public function login(Request $request,Admin $admin){
        $data = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (Auth::guard('api2')->attempt($data)) {
            $user = Auth::guard('api2');
            return $this->sendResponse([
                'token' => '',
                'user' =>$user
            ]);
            $token =$user->createToken('admin_ithwedapp')->accessToken;


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
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Admin\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function show(Admin $admin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Admin\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit(Admin $admin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Admin\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Admin $admin)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy(Admin $admin)
    {
        //
    }
}
