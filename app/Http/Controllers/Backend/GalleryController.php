<?php

namespace App\Http\Controllers\Backend;


use App\Http\Controllers\Controller;
use App\Model\GalleryCategory;
use App\Model\Gallery;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class GalleryController extends Controller
{
    public function index()
    {
        $gallery_category = GalleryCategory::orderBy('order', 'asc')->get();
        return view('backend.galleryCategory.index', compact('gallery_category'));
    }

    public function create()
    {
        return view('backend.galleryCategory.create');
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'category_name' => 'required',
            'order' => 'nullable|integer|max:100',
            'thumbnail_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);    
        // dd($request->all());

        $input = $request->all();
        if($input['order'] == null){
            $order = GalleryCategory::max('order');
            $input['order'] = $order + 1;
        }

        if($request->hasFile('thumbnail_image'))
        {
            $path = $request->file('thumbnail_image')->store('public/category');            
            $input['thumbnail_image'] = $path;
        }


        GalleryCategory::create($input);
        return redirect()->back()->with('success_msg', 'Data Added Successfully.');
    }

    public function edit($id)
    {
        // dd('edit');
        $gallery_category = GalleryCategory::findOrFail($id);
        return view('backend.galleryCategory.edit', compact('gallery_category'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'category_name' => 'required',
            'order' => 'nullable|integer|max:100',
            'thumbnail_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $gallery_category = GalleryCategory::findOrFail($id);
        
        $input = $request->all();
        
        if($request->hasFile('thumbnail_image'))
        {
            Storage::delete($gallery_category->image);
            $path = $request->file('thumbnail_image')->store('public/category');
            $input['thumbnail_image'] = $path;
        }
        if( empty($input['order']) )    {
            $input['order'] = GalleryCategory::max('order');
            $input['order'] += 1;
        }
        $gallery_category->update($input);
        return redirect()->back()->with('success_msg', 'Data Updated Successfully.');

    }

    public function destroy($id)
    {
        $gallery_category = GalleryCategory::findOrFail($id);
       
        $gallery = Gallery::where('gallery_categories_id', $id)->get();
        
        if(!empty($gallery)){
            
            foreach($gallery as $item){
                
                Storage::delete($item->image);
                
                $item->delete();
            }
        }

        Storage::delete($gallery_category->thumbnail_image);
        
        $gallery_category->delete();
        
        return redirect()->back()->with('success_msg', 'Data Deleted Successfully');
    }

    public function photos($id)
    {
        $galleryCategory = GalleryCategory::with('gallery')
        ->where('id', $id)
        ->firstOrFail();
        // dd($galleryCategory);

        return view('backend.galleryCategory.photos', compact('galleryCategory'));
    }    
}
