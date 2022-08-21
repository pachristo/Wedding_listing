<?php

namespace App\Http\Controllers\API\USER;

use App\Models\USER\TaskModel;
use App\Http\Controllers\API\BaseController;
use App\Models\USER\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\USER\TaskResource;
class TaskModelController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($paginate =30,$user_id,TaskModel  $taskModel)
    {

    $task=$taskModel->latest('created_at')->where('user_id',$user_id)->paginate($paginate);
  $data = [
            'msg' => 'ok',
            'data' => [
                'task' => TaskResource::collection($task->items()),
                'pagination' => $this->paginate($task),
            ],
        ];

        return $this->sendResponse($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function create(Request $req ,TaskModel  $taskModel)
    {
        //`id`, `user_id`, `task_name`, `task_date`, `is_complete`, `created_at`, `updated_at`
        $validate= Validator::make($req->all(),[
            'task_name'=>'required',
            'task_date'=> 'required',
        ],[
            'task_name.required' =>'Task name required',
            'task_date.required' =>'Task date required'
        ]);

        if($validate->fails()) return $this->sendError($validate->errors(),406);

        $task=$taskModel->create([
            'task_name' => $req->task_name,
            'task_date'=>$req->task_date,
            'user_id'=>auth()->user()->id

        ]);

        return $this->sendResponse(['msg' => 'ok','data'=>$task]);


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function makeComplete($id, TaskModel $taskModel)
    {
        $task=$taskModel->find($id);

        if($task!=null) {
           $status=$task->is_complete==true?false:true;
           $status_text=$status==true?'Task is marked Complete!' : " Task marked Uncomplete!";

           $taskModel->where('id', $id)->update(['is_complete'=>$status]);

           return $this->sendResponse(['msg' => $status_text,'data'=>[]]);
        }else{
            return $this->sendError([
                'msg' => 'Task not found! ',
            ], 406);
        }

    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\USER\TaskModel  $taskModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $req, TaskModel $taskModel)
    {
        //

        $validate= Validator::make($req->all(), [
            'task_id'=> 'required',
            'task_name' => 'required',
            'task_date' => 'required'
        ],[
            'task_id.required'=>'Task ID required',
            'task_name'=>'Task name required',
            'task_date'=>'Task date required'
        ]);
        if($validate->fails())  return $this->sendError($validate->errors(),406);


        $taskModel->where('id', $req->task_id)->update([
            'task_name' => $req->task_name,
            'task_date'=>$req->task_date
        ]);
        return $this->sendResponse(['msg' => 'Task Updated Successfully', 'data'=>[]]);
    }

    /**
     * Remove the specified resource from storage.
     * @param  \App\Models\USER\TaskModel  $taskModel
     * @return \Illuminate\Http\Response
     */


    public function destroy($id,TaskModel $taskModel)
    {
        //
        $taskModel->where('id',$id)->delete();
        return $this->sendResponse(['msg' => 'Task Deleted Successfully', 'data'=>[]]);
    }
}
