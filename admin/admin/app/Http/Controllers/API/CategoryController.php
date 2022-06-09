<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class CategoryController extends BaseController
{
    //
    public function create(Request $req, Category $cat)
    {

        // return $this->sendResponse($req->all(),200);
        $validate = Validator::make($req->all(), [
            'name' => 'required',
            'description' => 'required',
        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }

        $check = $req->hasFile('images');

        $filename = '';
        if ($check) {

            $files = $req->file('images');

            $filename = $this->ImageValidator($files, Str::slug($req->name, '-'));
            if ($filename == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('listing/images', $filename);

        }
        // }

        $create = $cat->create([
            'name' => ucwords(strtolower($req->name)),
            'slug' => Str::slug($req->name, '-'),
            'description' => $req->description,
            'image' => $filename,

        ]);

        return $this->sendResponse(['msg'=>'Category Created successfully','data'=>$create], 200);

    }

    public function delete($id,Category $cat){
        $cat->where('id',$id)->delete();
        return $this->sendResponse(['msg'=>'Category Deleted successfully']);
    }
}
