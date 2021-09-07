<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Gallery;
use App\Model\GalleryCategory;
use Illuminate\Support\Facades\Storage;


class PhotoController extends Controller
{
    public function create()
    {
        $categories = GalleryCategory::all();
        return view('backend.gallery.create', compact('categories'));   
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'category_id' => 'required|integer',
        ]);
        // dd($request->all());

        if($request->hasFile('image'))
        {
            $images = $request->image;
            // dd($images);
            foreach ($images as $key => $value) {
                $path = $images[$key]->store('public/Photos');            
                $gallery = new Gallery;
                $gallery->image = $path;
                $gallery->gallery_categories_id = $request->category_id;
                $gallery->save();
            }
        }else{
            return redirect()->back()->with('success_msg', 'Errors occoured!');    
        }
        return redirect()->back()->with('success_msg', 'Photos Added to album successfully.');
    }

    public function show($id)
    {
        
    }

    public function edit($id)
    {
        $categories = GalleryCategory::all();
        $photo = Gallery::with('gallery_category')->where('id', $id)->first();
        return view('backend.gallery.edit', compact('photo', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $photo = Gallery::findOrFail($id);
        $request->validate([
            'gallery_categories_id' => 'required|integer',
        ]);
        
        $input = $request->all();
        // dd($input);
        if($request->hasFile('image'))
        {
            Storage::delete($photo->image);
            $path = $input['image']->store('public/photos');            
            $input['image'] = $path;
        }
        $photo->update($input);
        return redirect()->back()->with('success_msg', 'Photos Added  successfully.');
    }

    // public function destroy($id)
    // {
    //     $photos = Gallery::findOrFail($id);
    //     Storage::delete($photos->image);
    //     $photos->delete();
    //     return redirect()->back()->with('success_msg', 'Photos Deleted Successfully!');
    // }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $gallery = Gallery::where('id', $array[$i])->first();
                Storage::delete($gallery->image);
                $gallery->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
