<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\ListingResource;
use App\Models\Category;
use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ListingController extends BaseController
{

    public function create(Request $req, Listing $list, Category $cat)
    {

        // 'id', 'title', 'cat_id', 'user_id','address', 'price',
        // 'city', 'state', 'region', 'country', 'status', 'description',
        // 'images', 'videos', 'map_latitude', 'map_longitude',
        // 'facebook_link', 'twitter_link', 'instagram_link',
        // 'youtube_link', 'created_at', 'updated_at',

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
                    $path = $mediaFiles->storeAs('public/listing', $name);
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
                    $path = $mediaFiles->storeAs('public/listing', $name);
                    $name = [Str::random(4) => $name];
                    array_push($C, $name);

                    // }
                } else {
                    return $this->sendError(['msg' => 'invalid file format (only mp4,ogx,oga,ogv,ogg,webm are allowed)'], 422, []);
                }

            }
        }

        $listing = $list->create([

            'title' => ucfirst($req->title),
            'cat_id' => $req->cat_id,
            'user_id' => null,
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
            'is_admin' => true,
            'is_promoted' => false,
            'is_approved'=>true
        ]);

        return $this->sendResponse(['msg' => 'Listing Created Successfully', 'data' => new ListingResource($listing)]);

    }

    public function show($paginate = 30, Listing $list)
    {

        $item = $list->latest('created_at')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'listing' => ListingResource::collection($item->items()),
                'pagination' => $this->paginate($item),
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
                    $path = $mediaFiles->storeAs('public/listing', $name);
                    $name = [Str::random(4) => $name];
                    array_push($g, $name);

                } else {
                    return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
                }

            }
        }

        $C = json_decode($listing->videos);
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
                    $path = $mediaFiles->storeAs('public/listing', $name);
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

        ]);

        return $this->sendResponse(['msg' => 'Listing Updated Successfully', 'data' => new ListingResource($list->find($req->id) )]);

    }
    public function delete($id)
    {
        Listing::where('id', $id)->update(['status' => '4']);
        return $this->sendResponse(['msg' => ' Item deleted successfully', 'data' => null]);
    }

    public function feature($id, $status)
    {

        $status = $status == 0 ? false : true;
        Listing::where('id', $id)->update(['is_featured' => $status]);
        $msg=$status==true?'Featured':'Unfeatured';
        return $this->sendResponse(['msg' => 'Item '.$msg.'   Successfully']);
    }
    public function promotion($id, $status)
    {

        $status = $status == 0 ? false : true;
        Listing::where('id', $id)->update(['is_promoted' => $status]);
        $msg=$status==true?'enabled':'disabled';
        return $this->sendResponse(['msg' => 'Item Promotion '.$msg.'   Successfully']);
    }

    public function approve_listing($id,$status){
        $status = $status == 0 ? false : true;
        Listing::where('id', $id)->update(['is_promoted' => $status]);
        $msg=$status==true?'Approved':'Disapproved';
        return $this->sendResponse(['msg' => 'Vendor Item  '.$msg.'   Successfully']);
    }
}









