<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\News;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class NewsController extends Controller
{
    protected $index_view = 'backend.news.index';
    protected $create_view = 'backend.news.create';
    protected $edit_view = 'backend.news.edit';

    public function index()
    {
        $news = News::latest()->get();
        // dd($news);
        return view($this->index_view, compact('news'));
    }
    
    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'news_title' => 'required|string|max:191|unique:news,news_url',
        ]);

        $input = $request->all();
        if($request->hasFile('cover_image'))
        {
            $path = $request->file('cover_image')->store('public/news');
            $input['cover_image'] = $path;
        }  
        if($request->hasFile('featured_image'))
        {
            $path = $request->file('featured_image')->store('public/news');
            $input['featured_image'] = $path;
        }  

        $input['news_url'] = Str::slug($input['news_title']);
        News::create($input);
        return redirect()->back()->with('success_msg', 'News Added Successfully');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        try{
            $news = News::findOrFail($id);
        }catch( \Exception $e ){
            return redirect()->back()->with('error_msg', 'OOps! Data not found!');
        }
        
        return view($this->edit_view, compact('news'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'news_title' => 'required|string|max:191|unique:news,news_title,'.$id,
        ]);

        $news = News::findOrFail($id);
        $input = $request->all();
        if($request->hasFile('cover_image'))
        {
            Storage::delete($news->cover_image);
            $path = $request->file('cover_image')->store('public/news');
            $input['cover_image'] = $path;
        }  
        if($request->hasFile('featured_image'))
        {
            Storage::delete($news->featured_image);
            $path = $request->file('featured_image')->store('public/news');
            $input['featured_image'] = $path;
        }  

        $input['news_url'] = Str::slug($input['news_title']);
        
        $news->update($input);

        return redirect()->back()->with('success_msg', 'News Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $news = News::where('id', $array[$i])->first();
                Storage::delete($news->cover_image);
                Storage::delete($news->featured_image);
                $news->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
