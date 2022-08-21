<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Models\USER\PaymentIntent;
use App\Models\USER\Subscription;
use App\Models\USER\Transaction;
use App\Models\USER\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SubscriptionController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Subscription $Subscription)
    {

        $sub = $Subscription->where('status', '1')->orderBy('units', 'asc')->get();

        return $this->sendResponse(['msg' => 'ok', 'data' => $sub]);

    }

    public function getPlanById($id, Subscription $Subscription)
    {
        $sub = $Subscription->find($id);

        return $this->sendResponse(['msg' => 'ok', 'data' => $sub]);
    }

    public function createIntent(Request $req, PaymentIntent $intent)
    {

        // 'id', 'user_id', 'trans_id', 'plan_id', 'created_at', 'updated_at', 'status', 'type', 'sub_date', 'nextDueDate', 'sub_count'
        $validate = Validator::make($req->all(), [
            'plan_id' => 'required',
            // 'user_id' => 'required',

        ]);

        if ($validate->fails()) {
            $this->sendError($validate->errors(), 406);
        }

        $data = $intent->create([
            'plan_id' => $req->plan_id,
            'user_id' =>auth()->user()->id,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'intent_id' => $data->id,
        ]]);

    }

    public function recordPayment(Request $req, User $user, PaymentIntent $intent, Transaction $trans)
    {

        $data = PaymentIntent::find($req->id);
        // return $data->sub;
        if ($data == null) {
            return $this->sendError('Record not found', 406, []);
        }

        // 'id', 'user_id', 'sub_id', 'unit', 'amount', 'txn_id', 'sub_count', 'created_at', 'updated_at', 'next_due_date', 'sub_date'

        // record on trans
        $date = date('Y-m-d H:i:s');
        $duration='+'.$data->sub->duration;
        // return date('Y-m-d H:i:s',strtotime('+2 months'));
        $nextdue = date('Y-m-d H:i:s', strtotime($duration));
        // return $nextdue.'-----'.$duration.'---------'. $data->sub->duration;

        $trans_record = $trans->create([
            'user_id' => auth()->user()->id, 'sub_id' => $data->sub->id, 'unit' => $data->sub->units, 'amount' => $data->sub->amount, 'txn_id' => '', 'sub_count' => auth()->user()->sub_count + 1, 'next_due_date' => $nextdue, 'sub_date' => $date,'gateway'=>$req->gateway
        ]);

        // update_user
        // 'id', 'email', 'is_vendor', 'is_couple', 'country', 'country_code', 'vendor_name', 'facebook', 'twitter', 'youtube', 'instagram', 'whatsapp', 'language', 'status', 'description', 'avatar', 'phone', 'is_phone_verified', 'email_verified_at', 'password', 'remember_token', 'created_at', 'updated_at', 'token', 'username', 'vendor_banner', 'vendor_address', 'vendor_type', 'state', 'firstname', 'lastname', 'is_flagged', 'is_verified', 'plan_id', 'trans_id', 'next_due_date', 'sub_date', 'is_active', 'sub_count'

        User::where('id', auth()->user()->id)->update([
            'plan_id'=>$data->sub->id, 'trans_id'=>$trans_record->id, 'next_due_date'=>$nextdue, 'sub_date'=>$date, 'is_active'=>true, 'sub_count'=>auth()->user()->sub_count + 1
        ]);
        $data = PaymentIntent::where('id', $req->id)->delete();


        return $this->sendResponse(['msg' => 'ok', 'data' =>['trans_record'=>$trans_record]],200);
    }

}
