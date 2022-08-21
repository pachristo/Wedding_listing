<?php
use App\Models\USER\Setting;
use App\Models\USER\Templates;
use App\Models\USER\Category;
use App\Http\Resources\USER\TemplateResources;
use App\Http\Resources\USER\CategoryResource;


function changeDateFormate($date,$date_format){
    return \Carbon\Carbon::createFromFormat('Y-m-d', $date)->format($date_format);
}

function productImagePath($image_name)
{
    return public_path('images/products/'.$image_name);
}

function settings( ){
    return Setting::find(1);
}

function templates(){

    $templates=Templates::latest('created_at')->get();

    return TemplateResources::collection($templates);

}
function categories(){
    $cat=Category::latest('created_at')->get();
    return CategoryResource::collection($cat);

}

?>
