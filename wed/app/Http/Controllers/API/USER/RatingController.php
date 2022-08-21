<?php

namespace App\Http\Controllers\API\USER;

use App\Models\USER\Listing;
use App\Models\USER\Rating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\RatingResource;
class RatingController extends BaseController
{
    //

    public function createRating(Request $req, Rating $rate, Listing $list)
    {
        // 'user_id', 'type', 'rating_no', 'listing_id',

        $validate = Validator::make($req->all(), [

            'listing_no' => 'required',
            'rating_no' => 'required',
        ], [

            'listing_no.required' => 'Listing id required',
            'rating_no.required' => 'rating no required',
        ]);

        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }
        // return settings();
        $rating = $rate->create([
            'user_id' => auth()->user()->id,
            'listing_id' => $req->listing_no,
            'rating_no' => $req->rating_no,
            'status' => settings()->is_rating_auto_approve==true?'1' :'0',
            'comment' => $req->comment,

        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'rating' => new RatingResource($rating)
        ]]);

    }

    public function deleteRating($id , Rating $rate){
        $rate->where('id',$id)->delete();
        return $this->sendResponse(['msg' => 'ok', 'data' => [

        ]]);
    }

    public function approveRating($id ,Rating $rate){
        $rating=$rate->find($id);

        if($rating!=null) {
           $status=$rating->status=='0'?'1':'0';
           $status_text=$status=='1'?'Rating is marked approved!' : " Rating marked unapproved!";

           $rating->where('id', $id)->update(['status'=>$status]);

           return $this->sendResponse(['msg' => $status_text,'data'=>[]]);
        }else{
            return $this->sendError([
                'msg' => 'Rating not found! ',
            ], 406);
        }

    }
}
