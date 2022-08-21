<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\BudgetResource;
use App\Models\USER\Budget;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BudgetController extends BaseController
{



    public function showById($id, Budget $budget)
    {
        $item = $budget->where('id',$id)->first();
        if($item==null){
            return $this->sendError('Budget Not Found',404,[]);
        }else{
            $data=[
                'msg' => 'ok',
                'data' => new BudgetResource($item)
            ];
            return $this->sendResponse($data);
        }

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id, $paginate, Budget $budget)
    {
        //
        $item = $budget->latest('created_at')->where('user_id', $id)->orderBy('id', 'desc')->get();
        $estimated_price = 0;
        $actual_price = 0;
        $paid_price = 0;
        $pending_price = 0;
        // return $item;
        foreach ($item as $key => $val) {
            $estimated_price = $estimated_price + (trim($val->estimated_price) == "" ? 0 : trim($val->estimated_price));
            $actual_price = $actual_price + (trim($val->actual_price) == "" ? 0 : trim($val->actual_price));
            $paid_price = $paid_price + (trim($val->paid_price) == "" ? 0 : trim($val->paid_price));
            $pending_price = $pending_price + (trim($val->pending_price) == "" ? 0 : trim($val->pending_price));

        }
        $item = $budget->latest('created_at')->where('user_id', $id)->orderBy('id', 'desc')->paginate($paginate);
        // BudgetResource
        $data = [
            'msg' => 'ok',
            'data' => [
                'total_price' => [
                    'estimated_price' => $estimated_price,
                    'actual_price' => $actual_price,
                    'paid_price' => $paid_price,
                    'pending_price' => $pending_price,
                ],
                'budget' => BudgetResource::collection($item->items()),
                'pagination' => $this->paginate($item),
            ],
        ];

        return $this->sendResponse($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $req, Budget $budget)
    {
        //
        $validate = Validator::make($req->all(), [
            'name' => 'required',
            'description' => 'required',
            'actual_price' => 'required',
            'estimated_price' => 'required',
        ], [
            'estimated_price.required' => 'Estimated Price required',
            'actual_price.required' => 'Actual Price required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406);
        }

        // 'id', 'name', 'description', 'status', 'created_at', 'updated_at', 'user_id'
        $data = $budget->create([
            'name' => $req->name,
            'description' => $req->description,
            'estimated_price' => $req->estimated_price,
            'actual_price' => $req->actual_price,
            'paid_price' => $req->paid_price,
            'pending_price' => $req->pending_price,
            'user_id' => auth()->user()->id,

        ]);
        return $this->sendResponse(['msg' => 'ok', 'data' => $data]);
    }

    public function update(Request $req, Budget $budget)
    {
        $validate = Validator::make($req->all(), [
            'name' => 'required',
            'description' => 'required',
            'actual_price' => 'required',
            'estimated_price' => 'required',
        ], [
            'estimated_price.required' => 'Estimated Price required',
            'actual_price.required' => 'Actual Price required',

        ]);
        if ($validate->fails()) {
            return $this->sendError($validate->errors(), 406);
        }

        // 'id', 'name', 'description', 'status', 'created_at', 'updated_at', 'user_id'

        $update = $budget->where('id', $req->id)->update([
            'name' => $req->name,
            'description' => $req->description,
            'estimated_price' => $req->estimated_price,
            'actual_price' => $req->actual_price,
            'paid_price' => $req->paid_price,
            'pending_price' => $req->pending_price,
        ]);
        return $this->sendResponse(['msg' => 'Budget Updated Successfully', 'data' => []]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\USER\Budget  $budget
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, Budget $budget)
    {
        //
        $delete = $budget->where('id', $id)->delete();
        return $this->sendResponse(['msg' => 'Budget Deleted Successfully', 'data' => []]);

    }
}
