<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class AboutUsController extends Controller
{
    public function index()
	{
        try {
            $aboutUs = AboutUs::firstOrFail();
            // dd($aboutUs);
        }   catch( \Exception $e )  {
            return redirect()->back()->with('error_msg', "OOps! About Us table not found!");
        }

		return view('backend.aboutUs.index', compact('aboutUs'));
	}

	public function update(Request $request)
	{        
        $input = $request->all();
        // dd($input);
        $aboutUs = AboutUs::firstOrFail();
        if($request->hasFile('cover_image'))
		{
            Storage::delete($aboutUs->cover_image);
            $path = $request->file('cover_image')->store('public/AboutUs'); 
            $input['cover_image'] = $path;
        }
        if($request->hasFile('first_featured_image'))
		{
            Storage::delete($aboutUs->first_featured_image);
            $path = $request->file('first_featured_image')->store('public/AboutUs'); 
            $input['first_featured_image'] = $path;
        }
        if($request->hasFile('second_featured_image'))
		{
            Storage::delete($aboutUs->second_featured_image);
            $path = $request->file('second_featured_image')->store('public/AboutUs'); 
            $input['second_featured_image'] = $path;
        }
        if($request->hasFile('mission_image'))
		{
            Storage::delete($aboutUs->mission_image);
            $path = $request->file('mission_image')->store('public/AboutUs'); 
            $input['mission_image'] = $path;
        }
        if($request->hasFile('vision_image'))
		{
            Storage::delete($aboutUs->vision_image);
            $path = $request->file('vision_image')->store('public/AboutUs'); 
            $input['vision_image'] = $path;
        }
        $aboutUs->update($input);
        return redirect()->back()->with('success_msg', 'Data Updated Successfully');
	}
}
