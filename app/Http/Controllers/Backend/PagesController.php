<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
class PagesController extends Controller


{
    protected $index_view = 'backend.pages.index';
    protected $create_view = 'backend.pages.create';
    protected $edit_view = 'backend.pages.edit';

    public function index()
    {
        $pages = Page::latest()->get() ;
        return view($this->index_view, compact('pages'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'page_title' => 'required|string|max:191|unique:pages,page_title',
            'featured_image' => 'nullable|image',
        ]);

        
        $input = $request->all();
        $title = $input['page_title'];
        $page_url = Str::slug($title);
        $input['page_url'] = $page_url;

        if( $request->hasFile('featured_image') )
		{
            $filepath = $request->file('featured_image')->store('public/pages'); 
            $input['featured_image'] = $filepath;
        }

        Page::create( $input );
        return  redirect()->back()->with('success_msg', 'Page Created Successfully');
    }

    public function edit($id)
    {
        $page = Page::findOrFail($id);
        return view($this->edit_view, compact('page'));
    }

    public function update(Request $request, $id)
    {
        // dd($request->all());
        $request->validate([
            'page_title' => 'required|string|max:191|unique:pages,page_title,'.$id,
            'featured_image' => 'nullable|image',
        ]);

        $input = $request->all();
        $page = Page::findOrFail($id);
        $title = $input['page_title'];
        $page_url = Str::slug($title);
        $input['page_url'] = $page_url;
        if( $request->hasFile('featured_image') )
		{
            Storage::delete($page->featured_image);
			$filepath = $request->file('featured_image')->store('public/pages'); 
            $input['featured_image'] = $filepath;
        }
        $page->update($input);
        return redirect()->back()->with('success_msg', 'Page Updated Successfully');

    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $news = Page::where('id', $array[$i])->first();
                Storage::delete($news->featured_image);
                $news->delete();
            }
            return response()->json(array('msg'=> "Page deleted successfully"), 200);
        }
    }    
}
