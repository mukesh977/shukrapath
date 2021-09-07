<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\CoverImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CoverImageController extends Controller
{
    public function index()
    {
        try{
            $cover_image = CoverImage::firstOrFail();            
        }catch(\Exception $e)
        {
            return redirect()->back()->with('error_msg', 'Oops! Table not found.');
        }
        return view('backend.coverImage.index', compact('cover_image'));
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();

        $cover_image = CoverImage::where('id', $id)->firstOrFail();    
            
        if($request->hasFile('contact_us_cover_image'))
        {
            Storage::delete($cover_image->contact_us_cover_image);
            $path = $request->file('contact_us_cover_image')->store('public/coverImage');            
            $input['contact_us_cover_image'] = $path;
        }
        
        if($request->hasFile('news_cover_image'))
        {
            Storage::delete($cover_image->news_cover_image);
            $path = $request->file('news_cover_image')->store('public/coverImage');            
            $input['news_cover_image'] = $path;
        }

        if($request->hasFile('gallery_cover_image'))
        {
            Storage::delete($cover_image->gallery_cover_image);
            $path = $request->file('gallery_cover_image')->store('public/coverImage');            
            $input['gallery_cover_image'] = $path;
        }

        if($request->hasFile('team_cover_image'))
        {
            Storage::delete($cover_image->team_cover_image);
            $path = $request->file('team_cover_image')->store('public/coverImage');            
            $input['team_cover_image'] = $path;
        }
        if($request->hasFile('service_cover_image'))
        {
            Storage::delete($cover_image->service_cover_image);
            $path = $request->file('service_cover_image')->store('public/coverImage');            
            $input['service_cover_image'] = $path;
        }
        $cover_image->update($input) ;
        return redirect()->back()->with('success_msg', 'Cover Images  Updated Successfully.');
    }
}
