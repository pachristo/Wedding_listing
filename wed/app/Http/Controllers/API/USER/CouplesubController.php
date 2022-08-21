<?php

namespace App\Http\Controllers\API\USER;
use App\Http\Controllers\API\BaseController;
use App\Models\USER\CoupleSubscription ;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\USER\CoupleSubIntent;
use App\Models\USER\CoupleTransaction;
use App\Models\USER\usedTemplate;
use App\Models\USER\User;
class CouplesubController extends BaseController
{
    //
    public function index(CoupleSubscription $Subscription)
    {

        $sub = $Subscription->where('status', '0')->get();

        return $this->sendResponse(['msg' => 'ok', 'data' => $sub]);

    }

    public function getPlanById($id, CoupleSubscription $Subscription)
    {
        $sub = $Subscription->find($id);

        return $this->sendResponse(['msg' => 'ok', 'data' => $sub]);
    }

    public function createIntent(Request $req, CoupleSubIntent $intent)
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

    public function recordPayment(Request $req, User $user, CoupleSubIntent $intent, CoupleTransaction $trans)
    {

        $data = CoupleSubIntent::find($req->id);
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
            'user_id' => auth()->user()->id, 'sub_id' => $data->sub->id, 'unit' => $data->sub->units, 'amount' => $data->sub->price, 'txn_id' => $req->trans_id, 'next_due_date' => $nextdue, 'sub_date' => $date,'gateway'=>$req->gateway
        ]);

        // update_user
        //   'user_id', 'template', 'created_at', 'updated_at', 'plan_id', 'sub_status', 'subscribed_date', 'next_due_date'
        usedTemplate::where('user_id', auth()->user()->id)->update([
            'plan_id'=>$data->sub->id, 'sub_status'=>'1', 'next_due_date'=>$nextdue, 'subscribed_date'=>$date
        ]);
        $data = CoupleSubIntent::where('id', $req->id)->delete();


        return $this->sendResponse(['msg' => 'ok', 'data' =>['trans_record'=>$trans_record]],200);
    }


    public function checkStatus($user_id){
        $find=usedTemplate::where('user_id',$user_id)->first();
        $status=false;
        if($find!=null){
            
            if($find->sub_status=='1') $status=true;
            return $this->sendResponse(['msg' => 'ok', 'is_website_subscription_status' =>$status,'is_template_available'=>true],200);
        }

        return $this->sendResponse(['msg' => 'ok', 'is_website_subscription_status' =>$status,'is_template_available'=>false],200);
    }
}
