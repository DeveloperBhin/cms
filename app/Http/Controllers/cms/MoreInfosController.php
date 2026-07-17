<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\MoreInfo;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Image;
use Validator;

class MoreInfosController extends BaseController {


    public function index()
    {

        $moreInfos = MoreInfo::orderBy('id', 'DESC')->get();
        $select = MoreInfo::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view('cms.more-infos.index', compact('moreInfos','select'));
    }


    public function create()
    {
        return view('cms.more-infos.create');
    }

    public function store(Request $request)
    {

        $request->validate(MoreInfo::$rules);

        $name = $request->input('active', '1');

        $inputs = $request->except('photo_url','icon');

        if($request->get('photo_url')){
            $image = $request->get('photo_url'); // base64 image
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = md5(date('Ymdhis')).'.'.$type;

            $path = public_path().'/uploads/more-infos';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['photo_url'] = $imageName;
        }

        if($request->file('icon')){  

            $file_url_en = $request->file('icon') ;

            $doc_name_en = 'icon-'.time() . '-' .$file_url_en->getClientOriginalName();

            $pathName = '/uploads/more-infos/';

            $destinationPath = public_path().$pathName;

            $file_url_en->move($destinationPath, $doc_name_en);

            $inputs['icon'] = $doc_name_en;
        }

        $moreInfo= auth()->user()->moreInfos()->save(new MoreInfo($inputs));

        if($moreInfo){
          return back()->with('status', 'success');
        }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $moreInfo = MoreInfo::find($id);
        $select = MoreInfo::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view("cms.more-infos.edit", compact('moreInfo','select'));
    }


    public function update(Request $request, $id)
    {
       $moreInfo = MoreInfo::find($id);

        $request->validate(MoreInfo::$rules_update);

        $inputs = $request->except('photo_url','icon');

        $img = $request->get('photo_url');

        if($request->get('photo_url')){

            if(is_file(public_path().'/uploads/more-infos'.$moreInfo->photo_url) and file_exists(public_path().'/uploads/more-infos'.$moreInfo->photo_url)){
                unlink(public_path().'/uploads/more-infos'.$moreInfo->photo_url);
            }

            $image = $request->get('photo_url'); // base64 image
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = md5(date('Ymdhis')).'.'.$type;

            $path = public_path().'/uploads/more-infos';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['photo_url'] = $imageName;

        }

        if($request->file('icon')){  

            $file_url_en = $request->file('icon') ;

            $doc_name_en = 'icon-'.time() . '-' .$file_url_en->getClientOriginalName();

            $pathName = '/uploads/more-infos/';

            $destinationPath = public_path().$pathName;

            $file_url_en->move($destinationPath, $doc_name_en);

            if(is_file(public_path().'/uploads/more-infos/'.$moreInfo->icon) && file_exists(public_path().'/uploads/more-infos/'.$project->icon)){
                unlink(public_path().'/uploads/more-infos/'.$moreInfo->icon);
            }

            $inputs['icon'] = $doc_name_en;
        }


        $inputs['user_id'] = auth()->user()->id;

        $moreInfo->update($inputs);

        return back()->with('status', 'success');

    }

    public function destroy($id)
    {

       $moreInfo = MoreInfo::find($id);

        if(is_file(public_path().'/uploads/more-infos'.$moreInfo->photo_url) and file_exists(public_path().'/uploads/more-infos'.$moreInfo->photo_url)){
            unlink(public_path().'/uploads/more-infos'.$moreInfo->photo_url);
        }

        MoreInfo::destroy($id);

        return back()->with('status', 'success');
    }

}
