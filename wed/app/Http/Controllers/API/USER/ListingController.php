<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\ListingResource;
use App\Http\Resources\USER\UserVendorResource;
use App\Models\USER\Category;
use App\Models\USER\Listing;
use App\Models\USER\Transaction;
use App\Models\USER\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ListingController extends BaseController
{
    //
    public function create(Request $req, Category $cat, Listing $list)
    {
        if (!auth()->user()->is_active) {
            return $this->sendError('Inactive Subscription!', 406, []);
        }

        if (intval(auth()->user()->sub->unit) < 1) {
            return $this->sendError('Insufficient Ads Units!', 406, []);
        }

        $validate = Validator::make($req->all(), [
            'title' => 'required',
            'address' => 'required',
            'price' => 'required',
            'city' => 'required',
            'state' => 'required',

            'country' => 'required',
            'description' => 'required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $g = [];
        if ($req->hasFile('images')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $files = $req->file('images');

            foreach ($files as $file) {

                $extension = $file->getClientOriginalExtension();

                $check = in_array($extension, $allowedfileExtension);
                $mediaFiles = $file;
                if ($check) {

                    $name = $mediaFiles->getClientOriginalName();
                    $name = Str::slug($name, '_') . Str::random(40) . '.' . $extension;

                    $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/listing/', $name);
                    // return $path;
                    // $path = $mediaFiles->storeAs('public/listing', $name);
                    $name = [Str::random(4) => $name];
                    array_push($g, $name);

                } else {
                    return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
                }

            }
        }

        $C = [];
        if ($req->hasFile('videos')) {

            $allowedfileExtension = ['mp4', 'ogx', 'oga', 'ogv', 'ogg', 'webm'];
            $vfiles = $req->file('videos');

            foreach ($vfiles as $file) {

                $extension = $file->getClientOriginalExtension();

                $check = in_array($extension, $allowedfileExtension);
                $mediaFiles = $file;
                if ($check) {
                    // foreach ($req->videos as $mediaFiles) {
                    $name = $mediaFiles->getClientOriginalName();
                    $name = Str::slug($name, '_') . Str::random(40) . '.' . $extension;
                    // $path = $mediaFiles->storeAs('public/listing', $name);
                    $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/listing/', $name);
                    $name = [Str::random(4) => $name];
                    array_push($C, $name);

                    // }
                } else {
                    return $this->sendError(['msg' => 'invalid file format (only mp4,ogx,oga,ogv,ogg,webm are allowed)'], 422, []);
                }

            }
        }
        if (auth()->user()->is_active) {

            $new_unit = auth()->user()->sub->unit - 1;

            Transaction::where('id', auth()->user()->trans_id)->update(['unit' => $new_unit]);

        }
        $listing = $list->create([

            'title' => ucfirst($req->title),
            'cat_id' => $req->cat_id,
            'user_id' => auth()->user()->id,
            'address' => $req->address,
            'price' => $req->price,
            'city' => $req->city,
            'state' => $req->state,
            'region' => $req->region,
            'country' => $req->country,
            'status' => '0',
            'description' => $req->description,
            'images' => json_encode($g),
            'videos' => json_encode($C),
            'map_latitude' => $req->map_latitude,
            'map_longitude' => $req->map_longitude,
            'facebook_link' => $req->facebook_link,
            'twitter_link' => $req->twitter_link,
            'instagram_link' => $req->instagram_link,
            'youtube_link' => $req->youtube_link,
            'is_featured' => false,
            'is_admin' => false,
            'is_promoted' => false,
            'is_approved' => settings()->is_listing_auto_approve ? true : false,
        ]);

        return $this->sendResponse(['msg' => 'Listing Created Successfully', 'data' => new ListingResource($listing)]);

    }

    public function showMylisting($paginate = 30, Listing $list)
    {

        $item = $list->latest('created_at')->where('user_id', auth()->user()->id)->where('status', '!=', '4')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => ListingResource::collection($item->items()),
                'pagination' => $this->paginate($item),
            ],
        ];

        return $this->sendResponse($data);

    }
    public function showAlllisting($paginate = 30, Listing $list)
    {

        $item = $list->latest('created_at')->where('is_approved', '1')->where('status', '!=', '4')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => ListingResource::collection($item->items()),
                'pagination' => $this->paginate($item),
            ],
        ];

        return $this->sendResponse($data);

    }
    public function showById($id, Listing $list)
    {
        $item = $list->find($id);
        if ($item == null) {
            return $this->sendError('Item not found', 404, []);
        }

        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => new ListingResource($item),

            ],
        ];

        return $this->sendResponse($data);
    }
    public function deletefile($id, $file_id, $type)
    {

        $list = Listing::find($id);
        if ($type == 'image') {
            $list_images = json_decode($list->images);
            $vv_array = [];
            foreach ($list_images as $key => $val) {
                foreach ($val as $tt => $vv) {
                    if ($tt != $file_id) {
                        array_push($vv_array, [$tt => $vv]);
                    }
                }
            }

            $list->images = json_encode($vv_array);
            $list->save();

        } else {

            $list_images = json_decode($list->videos);
            $vv_array = [];
            foreach ($list_images as $key => $val) {
                foreach ($val as $tt => $vv) {
                    if ($tt != $file_id) {
                        array_push($vv_array, [$tt => $vv]);
                    }

                }
            }

            $list->videos = json_encode($vv_array);
            $list->save();

        }

        return $this->sendResponse([
            'msg' => 'ok',
            'data' => null,
        ]);

    }

    public function edit(Request $req, Listing $list, Category $cat)
    {
        $listing = $list->find($req->id);

        $validate = Validator::make($req->all(), [
            'title' => 'required',
            'address' => 'required',
            'price' => 'required',
            'city' => 'required',
            'state' => 'required',

            'country' => 'required',
            'description' => 'required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $g = json_decode($listing->images);
        // return $listing;
        if ($req->hasFile('images')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $files = $req->file('images');

            foreach ($files as $file) {

                $extension = $file->getClientOriginalExtension();

                $check = in_array($extension, $allowedfileExtension);
                $mediaFiles = $file;
                if ($check) {

                    $name = $mediaFiles->getClientOriginalName();
                    $name = Str::slug($name, '_') . Str::random(40) . '.' . $extension;
                    $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/listing/', $name);
                    $name = [Str::random(4) => $name];
                    array_push($g, $name);

                } else {
                    return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
                }

            }
        }

        $C = json_decode($listing->videos);
        if ($req->hasFile('videos')) {

            $allowedfileExtension = ['mp4','mp3', 'ogx', 'oga', 'ogv', 'ogg', 'webm'];
            $vfiles = $req->file('videos');

            foreach ($vfiles as $file) {

                $extension = $file->getClientOriginalExtension();

                $check = in_array($extension, $allowedfileExtension);
                $mediaFiles = $file;
                if ($check) {
                    // foreach ($req->videos as $mediaFiles) {
                    $name = $mediaFiles->getClientOriginalName();
                    $name = Str::slug($name, '_') . Str::random(40) . '.' . $extension;
                    $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/listing/', $name);
                    $name = [Str::random(4) => $name];
                    array_push($C, $name);

                    // }
                } else {
                    return $this->sendError(['msg' => 'invalid file format (only mp4,ogx,oga,ogv,ogg,webm are allowed)'], 422, []);
                }

            }
        }

        $list->where('id', $req->id)->update([

            'title' => ucfirst($req->title),

            'address' => $req->address,
            'price' => $req->price,
            'city' => $req->city,
            'state' => $req->state,
            'region' => $req->region,
            'country' => $req->country,

            'description' => $req->description,
            'images' => json_encode($g),
            'videos' => json_encode($C),
            'map_latitude' => $req->map_latitude,
            'map_longitude' => $req->map_longitude,
            'facebook_link' => $req->facebook_link,
            'twitter_link' => $req->twitter_link,
            'instagram_link' => $req->instagram_link,
            'youtube_link' => $req->youtube_link,
            // 'is_approved'=>settings()->is_listing_auto_approve?
        ]);

        return $this->sendResponse(['msg' => 'Listing Updated Successfully', 'data' => new ListingResource($list->find($req->id))]);

    }

    public function delete($id)
    {
        Listing::where('id', $id)->update(['status' => '4']);
        return $this->sendResponse(['msg' => ' Item deleted successfully', 'data' => null]);
    }

    public function hire_vendor($paginate, Listing $list)
    {

        $item = $list->latest('created_at')->where('status', '!=', '4')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => ListingResource::collection($item->items()),
                'pagination' => $this->paginate($item),
            ],
        ];

        return $this->sendResponse($data);
    }

    public function getListingById($id, Listing $list)
    {
        $item = $list->find($id);

        if ($item != null) {
            $data = [
                'msg' => 'ok',
                'data' => [
                    'listing' => new ListingResource($item),

                ],
            ];
            return $this->sendResponse($data);
        } else {
            return $this->sendError(['msg' => 'Item not found!'], 404, []);
        }

    }

    public function searchListing(Request $request, Listing $list)
    {

        $keyword = $request->has('keyword') ? $request->get('keyword') : null;

        $listing = Listing::query();

        if (!is_null($request->keyword)) {
            $listing->orWhere("title", "LIKE", "%{$request->keyword}%")->orWhere("description", "LIKE", "%{$request->keyword}%");
        }

        if (!is_null($request->category)) {
            $listing->orWhere('cat_id', $request->cat_id);
        }

        if (!is_null($request->price)) {
            $price = explode('-', $request->price);
            $listing->whereBetween('price', [intval($price[0]), intval($price[1])]);

        }

        if (!is_null($request->region)) {

            $listing->orWhere('region', "LIKE", "%{$request->region}%");

        }

        if (!is_null($request->state)) {

            $listing->orWhere('state', "LIKE", "%{$request->state}%");

        }
        if (!is_null($request->country)) {

            $listing->orWhere('country', "LIKE", "%{$request->country}%");

        }

        $user_data = User::orWhere("vendor_name", "LIKE", "%{$request->keyword}%")->orWhere("phone", "LIKE", "%{$request->keyword}%")->paginate($request->paginate);

        $item = $listing->paginate($request->paginate);
        // return $item->items();
        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => [
                    'data' => ListingResource::collection($item->items()),
                    'pagination' => $this->paginate($item),
                ],
                'vendors' => [
                    'data' => UserVendorResource::collection($user_data->items()),
                    'pagination' => $this->paginate($user_data),
                ],

            ],
        ];

        return $this->sendResponse($data);

    }

}
