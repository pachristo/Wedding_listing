<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\UserCoupleResources;
use App\Http\Resources\USER\UserVendorResource;
use App\Mail\VerifyNot;
use App\Models\USER\Category;
use App\Models\USER\Listing;
use App\Models\USER\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class UserController extends BaseController
{

    public function vendor_register(Request $req, Listing $list, Category $cat)
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

        $token = rand(0, 9999);
        try {

            Mail::to($req->email)->send(new VerifyNot(SITELINK, $data_validate['vendor_name'], $token, CONTACT_EMAIL, ADDRESS));

        } catch (\Exception $e) {

            // return $this->sendError('unable to send mail', 406, []);

        }

        $user = User::create($data_validate);

        $accessToken = $user->createToken('authToken')->accessToken;
        $data = [
            'token' => $accessToken,
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

        $token = rand(0, 9999);
        $data_validate = [
            'password' => bcrypt($req->password),
            'firstname' => ucwords(strtolower($req->firstname)),
            'lastname' => ucwords(strtolower($req->lastname)),
            'email' => strtolower(trim($req->email)),
            'username' => strtolower(trim($req->username)),
            'phone' => trim($req->phone),
            'is_vendor' => false,
            'is_couple' => true,
            'token' => $token,

        ];

        try {

        Mail::to($req->email)->send(new VerifyNot(SITELINK, $data_validate['firstname'], $token, CONTACT_EMAIL,ADDRESS));

        } catch (\Exception $e) {

            // return $this->sendError('unable to send mail', 406, []);

        }

        $user = User::create($data_validate);

        $accessToken = $user->createToken('authToken')->accessToken;
        $data = [
            'token' => $accessToken,
            'user' => new UserCoupleResources($user),

        ];
        return $this->sendResponse($data);
    }

    public function login(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password,
        ];
        $dex = [
            'phone' => $request->email,
            'password' => $request->passwor,
        ];
        if (auth()->attempt($data) || auth()->attempt($dex)) {
            $user = auth()->user();
            $token = auth()->user()->createToken('ithwedapp')->accessToken;
            if ($user->is_vendor) {

                return $this->sendResponse([
                    'token' => $token,
                    'user' => new UserVendorResource($user),
                ]);

            }
            if ($user->is_couple) {

                return $this->sendResponse([
                    'token' => $token,
                    'user' => new UserCoupleResources($user),
                ]);

            }

        } else {
            return $this->sendError([
                'msg' => 'Invalid Details',
            ], 406);

        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function resend_token()
    {

        $token = rand(0, 9999);

        try {

            Mail::to(auth()->user()->email)->send(new VerifyNot(SITELINK, auth()->user()->firstname, $token, CONTACT_EMAIL, ADDRESS));

        } catch (\Exception $e) {

            return $this->sendError('unable to send mail', 406, []);

        }

    }

    public function updateVendor(Request $req, User $user)
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
            'email' => 'email|required|unique:users,email,' . $req->id,
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


        // 'id', 'email', 'is_vendor', 'is_couple', 'country', 'country_code', 'vendor_name', 'facebook', 'twitter', 'youtube', 'instagram', 'whatsapp', 'language', 'status', 'description', 'avatar', 'phone', 'is_phone_verified', 'email_verified_at', 'password', 'remember_token', 'created_at', 'updated_at', 'token', 'username', 'vendor_banner', 'vendor_address', 'vendor_type', 'state', 'firstname', 'lastname', 'is_flagged', 'is_verified', 'plan_id', 'trans_id', 'next_due_date', 'sub_date', 'is_active', 'sub_count'

        $data_validate = [
            // 'password' => bcrypt($req->password),
            'vendor_name' => ucwords(strtolower($req->vendor_name)),
            'vendor_address' => $req->vendor_address,
            'email' => strtolower(trim($req->email)),
            'phone' => trim($req->phone),
            'is_vendor' => true,
            'is_couple' => false,
            'avatar' => '',
            'state' => $req->state,
            'vendor_banner' => '',
            'description' => $req->description,
            'country' => trim($req->country),
            'country_code' => $req->country_code,
            'facebook' => $req->facebook,
            'twitter' => $req->twitter,
            'youtube' => $req->youtube,
            'instagram' => $req->instagram,
            'whatsapp' => $req->whatsapp,
            'language' => $req->language,
            'vendor_type' => $req->vendor_type,

        ];

        //profile photo validation
        if ($req->hasFile('avatar')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $file = $req->file('avatar');

            $extension = $file->getClientOriginalExtension();

            $check = in_array($extension, $allowedfileExtension);
            $mediaFiles = $file;
            if ($check) {

                $name = $mediaFiles->getClientOriginalName();
                $name = \Str::slug($name, '_') . \Str::random(40) . '.' . $extension;

                $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/user/', $name);
                $data_validate['avatar'] = $name;

            } else {
                return $this->sendError(['msg' => 'Invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
            }

        }

        //vendor Banner validation
        if ($req->hasFile('vendor_banner')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $file = $req->file('vendor_banner');

            $extension = $file->getClientOriginalExtension();

            $check = in_array($extension, $allowedfileExtension);
            $mediaFiles = $file;
            if ($check) {

                $name = $mediaFiles->getClientOriginalName();
                $name = \Str::slug($name, '_') . \Str::random(40) . '.' . $extension;

                $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/user/', $name);
                $data_validate['vendor_banner'] = $name;

            } else {
                return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
            }

        }

        User::where('id', $req->id)->update($data_validate);

        return $this->sendResponse(['msg' => 'ok', 'data' => []]);

    }

    public function updateCouple(Request $req, User $user)
    {
        $data_validate = [];

        //
        $validator = Validator::make($req->all(), [
            'firstname' => 'required|max:35,min:7',
        ], [
            'firstname.required' => 'First name required',
            'firstname.max' => 'First name should be at least 7 to 35 Characters',
            'firstname.min' => 'First name should be at least 7 to 35 Characters',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        //
        $validator = Validator::make($req->all(), [
            'lastname' => 'required|max:35,min:7',
        ], [
            'lastname.required' => 'Surname required',
            'lastname.max' => 'Surname should be at least 7 to 35 Characters',
            'lastname.min' => 'Surname should be at least 7 to 35 Characters',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors(), 406);
        }

        // email validation
        $validator = Validator::make($req->all(), [
            'email' => 'email|required|unique:users,email,' . $req->id,
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
        //    'id', 'email', 'is_vendor', 'is_couple', 'country', 'country_code', 'vendor_name', 'facebook', 'twitter', 'youtube', 'instagram', 'whatsapp', 'language', 'status', 'description', 'avatar', 'phone', 'is_phone_verified', 'email_verified_at', 'password', 'remember_token', 'created_at', 'updated_at', 'token', 'username', 'vendor_banner', 'vendor_address', 'vendor_type', 'state', 'firstname', 'lastname', 'is_flagged', 'is_verified', 'plan_id', 'trans_id', 'next_due_date', 'sub_date', 'is_active', 'sub_count'

        $data_validate = [
            // 'password' => bcrypt($req->password),
            'firstname' => ucwords(strtolower($req->firstname)),
            'lastname' => ucwords(strtolower($req->lastname)),
            'email' => strtolower(trim($req->email)),
            'phone' => trim($req->phone),
            'description' => $req->description,
            'country' => $req->country,
            'state' => $req->state,
            'country_code' => $req->country_code,
            'facebook' => $req->facebook,
            'twitter' => $req->twitter,
            'youtube' => $req->youtube,
            'instagram' => $req->instagram,
            'whatsapp' => $req->whatsapp,
            'language' => $req->language,
            'avatar' => '',

        ];

        //profile photo validation
        if ($req->hasFile('avatar')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $file = $req->file('avatar');

            $extension = $file->getClientOriginalExtension();

            $check = in_array($extension, $allowedfileExtension);
            $mediaFiles = $file;
            if ($check) {

                $name = $mediaFiles->getClientOriginalName();
                $name = \Str::slug($name, '_') . \Str::random(40) . '.' . $extension;

                $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/user/', $name);
                $data_validate['avatar'] = $name;

            } else {
                return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
            }

        }

        User::where('id', $req->id)->update($data_validate);

        return $this->sendResponse(['msg' => 'ok', 'data' => []]);

    }

    public function VendorProfile($id)
    {
        $user = User::find($id);
        if ($user == null) {
            return $this->sendError(['msg' => 'User record not Found'], 404, []);
        }

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'user' => new UserVendorResource($user),
        ]]);
    }

    public function CoupleProfile($id)
    {
        $user = User::find($id);
        if ($user == null) {
            return $this->sendError(['msg' => 'User record not Found'], 404, []);
        }

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'user' => new UserCoupleResources($user),
        ]]);
    }

    public function updatePassword(Request $req)
    {
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

        User::where('id', $req->id)->update([
            'password' => bcrypt($req->password),
        ]);

        return $this->sendResponse(['msg' => 'Password Updated Successfully', 'data' => [

        ]]);
    }

}
