<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Http\Resources\TemplateResources;
use App\Models\Template;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class WebsiteController extends BaseController
{
    //
    public function create(Request $req, Template $website)
    {
        // 'id', 'name', 'home', 'gallery', 'story', 'questions', 'description', 'home_code_mobile', 'gallery_code_mobile', 'story_code_mobile', 'questions_code_mobile', 'home_code_desktop', 'gallery_code_desktop', 'story_code_desktop', 'questions_code_desktop', 'created_at', 'updated_at'
        $validate = Validator::make($req->all(), [
            'name' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError('Template name required', 406, []);
        }

        $validate = Validator::make($req->all(), [
            'description' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError('Template description required', 406, []);
        }

        $validate = Validator::make($req->all(), [
            'home' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError('Template Home page image required', 406, []);
        }

        $home_file = '';
        if ($req->hasFile('home')) {

            $files = $req->file('home');

            $home_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            if ($home_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $home_file);

        }

        $story_file = '';
        if ($req->hasFile('story')) {

            $files = $req->file('story');

            $story_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            if ($story_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $story_file);

        }

        $gallery_file = '';
        if ($req->hasFile('gallery')) {

            $files = $req->file('gallery');

            $gallery_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            if ($gallery_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $gallery_file);

        }

        $gallery_file = '';
        if ($req->hasFile('gallery')) {

            $files = $req->file('gallery');

            $gallery_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            if ($gallery_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $gallery_file);

        }

        $question_file = '';
        if ($req->hasFile('question')) {

            $files = $req->file('question');

            $question_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            if ($question_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $question_file);

        }

        $creat_web = $website->create([
            'name' => $req->name,
            'home' => $home_file,
            'gallery' => $gallery_file,
            'story' => $story_file,
            'questions' => $question_file,
            'description' => $req->description,
            'home_code_mobile' => $req->home_code_mobile,
            'gallery_code_mobile' => $req->gallery_code_mobile,
            'story_code_mobile' => $req->story_code_mobile,
            'questions_code_mobile' => $req->questions_code_mobile,
            'home_code_desktop' => $req->home_code_desktop,
            'gallery_code_desktop' => $req->gallery_code_desktop,
            'story_code_desktop' => $req->story_code_desktop,
            'questions_code_desktop' => $req->questions_code_desktop,
        ]);

        return $this->sendResponse(['msg' => 'ok', 'data' => ['template' => new TemplateResources($creat_web)]]);

    }

    public function update(Request $req, Template $website)
    {
        // 'id', 'name', 'home', 'gallery', 'story', 'questions', 'description', 'home_code_mobile', 'gallery_code_mobile', 'story_code_mobile', 'questions_code_mobile', 'home_code_desktop', 'gallery_code_desktop', 'story_code_desktop', 'questions_code_desktop', 'created_at', 'updated_at'
        $validate = Validator::make($req->all(), [
            'name' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError('Template name required', 406, []);
        }

        $validate = Validator::make($req->all(), [
            'description' => 'required',

        ]);

        if ($validate->fails()) {
            return $this->sendError('Template description required', 406, []);
        }

        $home_file = '';
        if ($req->hasFile('home')) {

            $files = $req->file('home');

            $home_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            $creat_web = $website->where('id', $req->id)->update([

                'home' => $home_file,

            ]);
            if ($home_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $home_file);

        }

        $story_file = '';
        if ($req->hasFile('story')) {

            $files = $req->file('story');

            $story_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            $creat_web = $website->where('id', $req->id)->update([

                'story' => $story_file,

            ]);
            if ($story_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $story_file);

        }

        $gallery_file = '';
        if ($req->hasFile('gallery')) {

            $files = $req->file('gallery');

            $gallery_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            $creat_web = $website->where('id', $req->id)->update([

                'story' => $story_file,

            ]);
            if ($gallery_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $gallery_file);

        }

        $gallery_file = '';
        if ($req->hasFile('gallery')) {

            $files = $req->file('gallery');

            $gallery_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            $creat_web = $website->where('id', $req->id)->update([

                'gallery' => $gallery_file,

            ]);
            if ($gallery_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $gallery_file);

        }

        $question_file = '';
        if ($req->hasFile('questions')) {

            $files = $req->file('questions');

            $question_file = $this->ImageValidator($files, \Str::slug($req->name, '-'));
            $creat_web = $website->where('id', $req->id)->update([
                'name' => $req->name,
                // 'home' => $home_file,
                // 'gallery' => $gallery_file,
                // 'story' => $story_file,
                'questions' => $question_file,

            ]);
            if ($question_file == 'err') {
                return $this->sendError('Only .jpg, .jpeg, .png & .gif  images are allowed', 406, []);
            }

            $files->storeAs('website/images', $question_file);

        }

        $creat_web = $website->where('id', $req->id)->update([
            'name' => $req->name,
            // 'home' => $home_file,
            // 'gallery' => $gallery_file,
            // 'story' => $story_file,
            // 'questions' => $question_file,
            'description' => $req->description,
            'home_code_mobile' => $req->home_code_mobile,
            'gallery_code_mobile' => $req->gallery_code_mobile,
            'story_code_mobile' => $req->story_code_mobile,
            'questions_code_mobile' => $req->questions_code_mobile,
            'home_code_desktop' => $req->home_code_desktop,
            'gallery_code_desktop' => $req->gallery_code_desktop,
            'story_code_desktop' => $req->story_code_desktop,
            'questions_code_desktop' => $req->questions_code_desktop,
        ]);
        return $this->sendResponse(['msg' => 'Data Updated Successfully', 'data' => []]);
    }

    public function delete($id, Template $website)
    {
        $creat_web = $website->where('id', $id)->delete();

        return $this->sendResponse(['msg' => 'Record deleted successfully', 'data' => []]);
    }


    public function getById($id, Template $website){
         $web=$website->find($id);
         if($web!=null){
               return $this->sendResponse(['msg'=>'ok', 'data'=>[
            'template' =>new TemplateResources($web)
         ]]);
         }
         return $this->sendError('Data Not Found', 406, []);
    }

    public function showAll( Template $website){
        $web=$website->latest('created_at')->get();
        if(count($web)>0){
               return $this->sendResponse(['msg'=>'ok', 'data'=>[
           'template' => TemplateResources::collection($web)
        ]]);
        }

        return $this->sendError('Data Not Found', 406, []);


   }
}
