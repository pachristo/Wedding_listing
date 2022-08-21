<?php

namespace App\Http\Controllers\API\USER;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\USER\AllwebsiteResource;
use App\Http\Resources\USER\TemplateResources;
// class WebsiteGalleryResources extends JsonResource
use App\Http\Resources\USER\WebsiteGalleryResources;
use App\Http\Resources\USER\WebsiteQuestionResources;
use App\Http\Resources\USER\WEBStoryResource;
use App\Http\Resources\USER\WeddingHomeResources;
use App\Models\USER\usedTemplate;
use App\Models\USER\User;
use App\Models\USER\WEDGallery;
use App\Models\USER\WEDHome;
use App\Models\USER\WEDQuestion;
use App\Models\USER\WEDStory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\USER\UserCoupleResources;

class WeddingWebsiteController extends BaseController
{
    //

    public function createHome(Request $req, WEDHome $website)
    {

        //
        $validator = Validator::make($req->all(), [
            'cover_image' => 'required',
        ], [
            '',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Cover image Required', 406);
        }

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('user ID required', 406);
        }

        $validator = Validator::make($req->all(), [
            'your_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Your Name is required', 406);
        }
        $validator = Validator::make($req->all(), [
            'partner_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Partner Name is required', 406);
        }

        $validator = Validator::make($req->all(), [
            'event_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Event Name is required', 406);
        }

        $validator = Validator::make($req->all(), [
            'venue' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Venue is required', 406);
        }
        $image = '';

        if ($req->hasFile('cover_image')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $file = $req->file('cover_image');

            $extension = $file->getClientOriginalExtension();

            $check = in_array($extension, $allowedfileExtension);
            $mediaFiles = $file;
            if ($check) {

                $name = $mediaFiles->getClientOriginalName();
                $name = \Str::slug($name, '_') . \Str::random(40) . '.' . $extension;

                $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/', $name);
                $image = $name;

            } else {
                return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
            }

        }

        $web = $website->create([
            'user_id' => trim($req->user_id), 'cover_image' => $image, 'your_name' => ucwords(strtolower($req->your_name)), 'partner_name' => ucwords(strtolower($req->partner_name)), 'event_name' => ucwords($req->event_name), 'date' => $req->date, 'time' => $req->time, 'venue' => $req->venue, 'color' => $req->color,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => ['home' => new WeddingHomeResources($web)]]);

    }

    public function updateHome(Request $req, WEDHome $website)
    {

        //
        // $validator = Validator::make($req->all(), [
        //     'cover_image' => 'required'
        // ]);
        // if ($validator->fails()) {
        //     return $this->sendError('Cover image Required', 406);
        // }

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('user ID required', 406);
        }

        $validator = Validator::make($req->all(), [
            'your_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Your Name is required', 406);
        }
        $validator = Validator::make($req->all(), [
            'partner_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Partner Name is required', 406);
        }

        $validator = Validator::make($req->all(), [
            'event_name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Event Name is required', 406);
        }

        $validator = Validator::make($req->all(), [
            'venue' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Venue is required', 406);
        }
        $image = '';

        if ($req->hasFile('cover_image')) {

            $allowedfileExtension = ['jpeg', 'jpg', 'png', 'gif'];
            $file = $req->file('cover_image');

            $extension = $file->getClientOriginalExtension();

            $check = in_array($extension, $allowedfileExtension);
            $mediaFiles = $file;
            if ($check) {

                $name = $mediaFiles->getClientOriginalName();
                $name = \Str::slug($name, '_') . \Str::random(40) . '.' . $extension;

                $path = $mediaFiles->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/', $name);
                $image = $name;
                WEDHome::where('user_id', $req->user_id)->update(['cover_image' => $image]);
            } else {
                return $this->sendError(['msg' => 'invalid file format (only jpeg, jpg, png, gif are allowed)'], 422, []);
            }

        }

        $web = $website->where('user_id', $req->user_id)->update([
            'user_id' => trim($req->user_id),
            'your_name' => ucwords(strtolower($req->your_name)),
            'partner_name' => ucwords(strtolower($req->partner_name)),
            'event_name' => ucwords($req->event_name),
            'date' => $req->date,
            'time' => $req->time,
            'venue' => $req->venue,
            'color' => $req->color,
        ]);

        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => []]);

    }

    public function getHomepage($user_id)
    {
        $data = WEDHome::where('user_id', $user_id)->first();
        return $this->sendResponse(['msg' => 'ok', 'data' => ['home' => new WeddingHomeResources($data)]]);

    }

    public function getStoryPage($user_id)
    {
        $data = WEDStory::where('user_id', $user_id)->first();
        return $this->sendResponse(['msg' => 'ok', 'data' => ['home' => new WEBStoryResource($data)]]);

    }

    public function createStory(Request $req, WEDStory $story)
    {

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'title' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Title required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'story' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Your Story is required!', 406);
        }

        $image_array = [];
        $gg = "|";

        if ($files = $req->file('file')) {

            foreach ($files as $file) {

                $type = $file->getClientMimeType();
                $size = number_format((float) ($file->getSize() / (1024 * 1000)), 2);
                $extension = $file->getClientOriginalExtension();
                $type_define = explode('/', $type)[0];
                $name = $file->getClientOriginalName();
                $gen_name = \Str::random(49) . '.' . $extension;
                if (intval($size) > 60) {
                    return $this->sendError('file_error', [
                        'msg' => 'File size should must not be more than 60MB',
                    ], 400);
                }
                if ($type_define != 'video' && $type_define != 'image') {
                    return $this->sendError('file_error', [
                        'msg' => 'Only Image and Video Files are allowed!' . $type_define,
                    ], 400);
                }

                $gg .= 'type:' . $type_define . ',' . 'name:' . $gen_name . '|';

                $file->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/story/', $gen_name);
            }

        }

        // 'id', 'user_id', 'text', 'media','title', 'created_at', 'updated_at'

        $create_story = $story->create([
            'user_id' => $req->user_id, 'text' => $req->story, 'media' => $gg, 'title' => $req->title,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'story' => new WEBStoryResource($create_story),
        ]]);

    }

    public function updateStory(Request $req, WEDStory $story)
    {

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'title' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Title required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'story' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Your Story is required!', 406);
        }

        $image_array = [];

        $data = $story->where('user_id', $req->user_id)->first();
        $gg = $data->media;
        if ($files = $req->file('file')) {

            foreach ($files as $file) {

                $type = $file->getClientMimeType();
                $size = number_format((float) ($file->getSize() / (1024 * 1000)), 2);
                $extension = $file->getClientOriginalExtension();
                $type_define = explode('/', $type)[0];
                $name = $file->getClientOriginalName();
                $gen_name = \Str::random(49) . '.' . $extension;
                if (intval($size) > 60) {
                    return $this->sendError('file_error', [
                        'msg' => 'File size should must not be more than 60MB',
                    ], 400);
                }
                if ($type_define != 'video' && $type_define != 'image') {
                    return $this->sendError('file_error', [
                        'msg' => 'Only Image and Video Files are allowed!' . $type_define,
                    ], 400);
                }

                $gg .= 'type:' . $type_define . ',' . 'name:' . $gen_name . '|';

                $file->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/story/', $gen_name);
            }

        }

        // 'id', 'user_id', 'text', 'media','title', 'created_at', 'updated_at'

        $create_story = $story->where('user_id', $req->user_id)->update([
            'text' => $req->story, 'media' => $gg, 'title' => $req->title,
        ]);

        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => [

        ]]);

    }

    public function deleteStoryFile($user_id, $name, WEDStory $story)
    {

        $data = $story->where('user_id', $user_id)->first();
        $files_new = '|';
        if ($data->media != '|' || $data->media != '') {
            $file_array = explode('|', $data->media);
            foreach ($file_array as $key => $val) {

                if ($val != '') {
                    $first_array = explode(',', $val);
                    $jk = explode(':', $first_array[0]);
                    $jc = explode(':', $first_array[1]);
                    if ($name != $jc[1]) {
                        $files_new .= 'type:' . $jk[1] . ',' . 'name:' . $jc[1] . '|';
                        //  array_push($files, [$jk[0] => $jk[1], $jc[0] => $jc[1]]);
                    }

                }
            }

            $story->where('user_id', $user_id)->update(['media' => $files_new]);
        }
        return $this->sendResponse(['msg' => 'File Deleted Successfully', 'data' => [

        ]]);

    }

    public function createGallery(Request $req, WEDGallery $gallery)
    {

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'title' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Title required!', 406);
        }

        $image_array = [];
        $gg = "|";

        if ($files = $req->file('file')) {

            foreach ($files as $file) {

                $type = $file->getClientMimeType();
                $size = number_format((float) ($file->getSize() / (1024 * 1000)), 2);
                $extension = $file->getClientOriginalExtension();
                $type_define = explode('/', $type)[0];
                $name = $file->getClientOriginalName();
                $gen_name = \Str::random(49) . '.' . $extension;
                if (intval($size) > 60) {
                    return $this->sendError('file_error', [
                        'msg' => 'File size should must not be more than 60MB',
                    ], 400);
                }
                if ($type_define != 'video' && $type_define != 'image') {
                    return $this->sendError('file_error', [
                        'msg' => 'Only Image and Video Files are allowed!' . $type_define,
                    ], 400);
                }

                $gg .= 'type:' . $type_define . ',' . 'name:' . $gen_name . '|';

                $file->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/gallery/', $gen_name);
            }

        }

        // 'id', 'user_id', 'text', 'media','title', 'created_at', 'updated_at'

        $create_story = $gallery->create([
            'user_id' => $req->user_id, 'media' => $gg, 'title' => $req->title,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => [
            'gallery' => new WebsiteGalleryResources($create_story),
        ]]);

    }

    public function updateGallery(Request $req, WEDGallery $gallery)
    {

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'title' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Title required!', 406);
        }

        $image_array = [];

        $data = $gallery->where('user_id', $req->user_id)->first();
        $gg = $data->media;
        if ($files = $req->file('file')) {

            foreach ($files as $file) {

                $type = $file->getClientMimeType();
                $size = number_format((float) ($file->getSize() / (1024 * 1000)), 2);
                $extension = $file->getClientOriginalExtension();
                $type_define = explode('/', $type)[0];
                $name = $file->getClientOriginalName();
                $gen_name = \Str::random(49) . '.' . $extension;
                if (intval($size) > 60) {
                    return $this->sendError('file_error', [
                        'msg' => 'File size should must not be more than 60MB',
                    ], 400);
                }
                if ($type_define != 'video' && $type_define != 'image') {
                    return $this->sendError('file_error', [
                        'msg' => 'Only Image and Video Files are allowed!' . $type_define,
                    ], 400);
                }

                $gg .= 'type:' . $type_define . ',' . 'name:' . $gen_name . '|';

                $file->move(dirname(base_path()) . '/admin/admin/storage/app/public/website/gallery/', $gen_name);
            }

        }

        // 'id', 'user_id', 'text', 'media','title', 'created_at', 'updated_at'

        $create_story = $gallery->where('user_id', $req->user_id)->update([
            'media' => $gg, 'title' => $req->title,
        ]);

        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => [

        ]]);

    }

    public function deleteGalleryFile($user_id, $name, WEDGallery $gallery)
    {

        $data = $gallery->where('user_id', $user_id)->first();
        $files_new = '|';
        if ($data->media != '|' || $data->media != '') {
            $file_array = explode('|', $data->media);
            foreach ($file_array as $key => $val) {

                if ($val != '') {
                    $first_array = explode(',', $val);
                    $jk = explode(':', $first_array[0]);
                    $jc = explode(':', $first_array[1]);
                    if ($name != $jc[1]) {
                        $files_new .= 'type:' . $jk[1] . ',' . 'name:' . $jc[1] . '|';
                        //  array_push($files, [$jk[0] => $jk[1], $jc[0] => $jc[1]]);
                    }

                }
            }

            $gallery->where('user_id', $user_id)->update(['media' => $files_new]);
        }
        return $this->sendResponse(['msg' => 'File Deleted Successfully', 'data' => [

        ]]);

    }

    public function getGalleryPage($user_id)
    {
        $data = WEDGallery::where('user_id', $user_id)->first();
        return $this->sendResponse(['msg' => 'ok', 'data' => ['home' => new WebsiteGalleryResources($data)]]);

    }

    public function createQuestion(Request $req, WEDQuestion $question)
    {

        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'question' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Question required!', 406);
        }

        $validator = Validator::make($req->all(), [
            'answer' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Answer required!', 406);
        }

        $create = $question->create([
            'user_id' => $req->user_id,
            'question' => $req->question,
            'answer' => $req->answer,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => ['question' => new WebsiteQuestionResources($create)]]);

    }
    public function UpdateQuestion(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'user_id' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('User ID required!', 406);
        }
        $validator = Validator::make($req->all(), [
            'question' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Question required!', 406);
        }

        $validator = Validator::make($req->all(), [
            'answer' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Answer required!', 406);
        }
        WEDQuestion::where('id', $req->id)->update([
            'user_id' => $req->user_id,
            'question' => $req->question,
            'answer' => $req->answer,
        ]);
        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => []]);

    }
    public function deleteQuestion($id)
    {
        WEDQuestion::where('id', $id)->delete();
        return $this->sendResponse(['msg' => 'Data Deleted Successfully', 'data' => []]);

    }

    public function getQuestionPage($user_id)
    {
        $dat = WEDQuestion::latest('created_at')->get();
        return $this->sendResponse(['msg' => 'ok', 'data' => ['question' => WebsiteQuestionResources::collection($dat)]]);

    }

    public function chooseTemplate($user_id, $template_id)
    {
        if (usedTemplate::where('user_id', $user_id)->first() == null) {

            usedTemplate::create([
                'user_id' => $user_id,
                'template' => $template_id,
            ]);

        } else {

            usedTemplate::where('user_id', $user_id)->update([
                'template' => $template_id,
            ]);

        }
        $template = \DB::table('templates')->where('id', $template_id)->first();

        return $this->sendResponse(['msg' => 'ok', 'data' => ['template' => new TemplateResources($template)]]);

    }

    public function FindTemplate($user_id)
    {
        $template = usedTemplate::where('user_id', $user_id)->first();

        if ($template == null) {
            return $this->sendError('Record not found !', 404);
        }

        $template = \DB::table('templates')->where('id', $template->template)->first();
        if ($template == null) {
            return $this->sendError('Record not found!', 404);
        }

        return $this->sendResponse(['msg' => 'ok',
            'data' => ['template' => new TemplateResources($template)]]);
    }
    public function getwebsites($paginate)
    {
        $website = usedTemplate::where('sub_status', '1')->latest('created_at')->paginate($paginate);
        $data = [
            'msg' => 'ok',
            'data' => [
                'website' => AllwebsiteResource::collection($website->items()),
                'pagination' => $this->paginate($website),
            ],
        ];

        return $this->sendResponse($data);

    }

    public function search(Request $request)
    {
        // 'id', 'user_id', 'cover_image', 'your_name', 'partner_name', 'event_name', 'date', 'time', 'venue', 'color', 'created_at', 'updated_at'
        $users = WEDHome::where("your_name", "LIKE", "%{$request->keyword}%")->orWhere("partner_name", "LIKE", "%{$request->keyword}%")->orWhere("event_name", "LIKE", "%{$request->keyword}%")
            ->orWhere("venue", "LIKE", "%{$request->keyword}%")
            ->get();
        $data = [];

        foreach ($users as $key => $val) {
         
            if ($val->template != null) {
                $gg = [$key => [

                    'id' => $val->template->id,
                    'front' => new WeddingHomeResources($val),
                    'template' => new TemplateResources($val->template->templates),
                    'user' => new UserCoupleResources($val->template->user),

                ]];

                array_push($data, $gg);

            }
        }

        return $this->sendResponse($data);

    }
}
