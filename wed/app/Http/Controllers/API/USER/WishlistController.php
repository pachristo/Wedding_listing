<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\WishlistResources;
use App\Models\USER\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class WishlistController extends BaseController
{

    public function create(Request $req, Wishlist $wish)
    {
        // 'id', 'listing_id', 'user_id', 'status', 'created_at', 'updated_at'
        $Validator = Validator::make($req->all(),[
            'listing_id' => 'required',
            'user_id' => 'required',

        ]);

        if ($Validator->fails()) {
            return $this->sendError(['msg' => 'all field required', 'data' => $Validator->errors()], 406, []);
        }

        $item = $wish->where('user_id', $req->user_id)->where('listing_id', $req->listing_id)->first();
        if ($item == null) {
            $wish->create([
                'listing_id' => $req->listing_id,
                'user_id' => $req->user_id,
            ]);
            return $this->sendResponse(['msg' => 'ok', 'data' => ['wishlist_status' => true]]);

        } else {
            $wish->where('user_id', $req->user_id)->where('listing_id', $req->listing_id)->delete();
            return $this->sendResponse(['msg' => 'ok', 'data' => ['wishlist_status' => false]]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function show($id, $paginate = 10, Wishlist $wish)
    {

        $item = $wish->where('user_id', $id)->latest('created_at')->paginate($paginate);
        foreach($item as $key=>$item){
            if($item->listing==null){
                $wish->where('id',$item->id)->delete();
            }
        }
        
        $item = $wish->where('user_id', $id)->latest('created_at')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'wishlist' => WishlistResources::collection($item),
                'pagination' => $this->paginate($item),
            ],
        ];

        return $this->sendResponse($data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, Wishlist $wish)
    {

        $wish->where('id', $id)->delete();
        return $this->sendResponse(['msg' => 'wishlist deleted successfully', 'data' => ['wishlist_status' => false]]);

    }
}
