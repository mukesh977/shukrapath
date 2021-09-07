<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Feature;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class FeatureController extends Controller
{
    protected $index_view = 'backend.feature.index';
    protected $create_view = 'backend.feature.create';
    protected $edit_view = 'backend.feature.edit';

    public function index()
    {
        $feature = Feature::latest()->get();
        // dd($feature);
        return view($this->index_view, compact('feature'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:191|unique:features,title',
        ]);

        $input = $request->all();

        if($input['order'] == null){
            $order = Feature::max('order');
            $input['order'] = $order + 1;
        }

        if($request->hasFile('cover_image'))
        {
            $path = $request->file('cover_image')->store('public/feature');
            $input['cover_image'] = $path;
        }  
        if($request->hasFile('featured_image'))
        {
            $path = $request->file('featured_image')->store('public/feature');
            $input['featured_image'] = $path;
        }  

        $input['slug'] = Str::slug($input['title']);
        Feature::create($input);
        return redirect()->back()->with('success_msg', 'Feature Added Successfully');
    }

    public function show(Feature $feature)
    {
        //
    }

    public function edit(Feature $feature)
    {
        
        return view($this->edit_view, compact('feature'));
    }

    public function update(Request $request, Feature $feature)
    {
        $request->validate([
            'title' => 'required|string|max:191|unique:features,title,'.$feature->id,
        ]);

        $input = $request->all();
        
        if($input['order'] == null){
            $order = Feature::max('order');
            $input['order'] = $order + 1;
        }

        if($request->hasFile('cover_image'))
        {
            Storage::delete($feature->cover_image);
            $path = $request->file('cover_image')->store('public/feature');
            $input['cover_image'] = $path;
        }  

        if($request->hasFile('featured_image'))
        {
            Storage::delete($feature->featured_image);
            $path = $request->file('featured_image')->store('public/feature');
            $input['featured_image'] = $path;
        }  

        $input['slug'] = Str::slug($input['title']);
        
        $feature->update($input);

        return redirect()->back()->with('success_msg', 'Feature Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $features = Feature::where('id', $array[$i])->first();
                Storage::delete($features->cover_image);
                Storage::delete($features->featured_image);
                $features->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
