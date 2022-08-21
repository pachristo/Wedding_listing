<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\ListingCommentResource;
use App\Models\USER\ListingComment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ListingCommentController extends BaseController
{
    //
    public function create(Request $req, ListingComment $comment)
    {
        //  'id', 'user_id', 'listing_id', 'comment', 'is_approved', 'created_at', 'updated_at',

        $validate = Validator::make($req->all(), [

            'listing_id' => 'required',
            // 'user_id' => 'required',
            'comment' => 'required',
        ], [

            'listing_id.required' => 'Listing id required',
            'user_id.required' => 'User id no required',

        ]);

        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406, []);
        }


        // return settings();
        $com = $comment->create([
            'user_id' => trim(auth()->user()->id),
            'listing_id' => trim($req->listing_id),
            'comment' => $req->comment,
            'is_approved' => settings()->is_listing_comment_approved == true ? true : false,

        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'comment' => new ListingCommentResource($com),
        ]]);
    }

    public function approve($id, ListingComment $comment)
    {
        $comment = $comment->find($id);

        if ($comment != null) {
            $status = $comment->is_approved == true ? false : true;
            $status_text = $status == true ? 'comment is marked approved!' : " comment marked unapproved!";

            $comment->where('id', $id)->update(['is_approved' => $status]);

            return $this->sendResponse(['msg' => $status_text, 'data' => []]);
        } else {
            return $this->sendError([
                'msg' => 'Comment not found! ',
            ], 406);
        }

    }

    public function delete($id, ListingComment $comment)
    {
        $comment->where('id', $id)->delete();
        return $this->sendResponse(['msg' => 'ok', 'data' => [

        ]]);
    }

}
