<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Service;
use App\Model\ServiceCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;




class ServiceController extends Controller
{
    protected $view_index = 'backend.service.index';
    protected $view_create = 'backend.service.create';
    protected $view_edit = 'backend.service.edit';

    public function index()
    {
        $service = Service::with('service_category')->get();
        return view($this->view_index, compact('service'));
    }

    public function create()
    {
        $serviceCategories = ServiceCategory::asc()->get();
        return view($this->view_create, compact('serviceCategories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:191|unique:services,title',
            'service_categories_id' => 'required|integer',
            'cover_imag' => 'nullable|image',
            'cover_image' => 'nullable|image',
            'featured_image' => 'nullable|image',
            'order' => 'nullable|integer',
        ]);

        $input = $request->all();
        
        $title = $input['title'];
        $slug = Str::slug($title, '-');
        $input['slug'] = $slug;

        if($request->hasFile('cover_image'))
        {
            $path = $request->file('cover_image')->store('public/project');
            $input['cover_image'] = $path;
        } 

        if($request->hasFile('featured_image'))
        {
            $path = $request->file('featured_image')->store('public/project');
            $input['featured_image'] = $path;
        } 

        if(empty($input['order']))  {
            $max_order = Service::max('order');
            $input['order'] += $max_order;
        }

        Service::create($input);
        return redirect()->back()->with('success_msg', 'New Project Created Successfully.');
    }

    public function edit($id)
    {
        $serviceCategories = ServiceCategory::asc()->get();

        $service = Service::with('service_category')->where('id', $id)->firstOrFail();
        return view($this->view_edit, compact('service', 'serviceCategories'));
    }

    public function update(Request $request, Service $service)
    {
        $request->validate([
            'title' => 'required|max:191|unique:services,title,'.$service->id,
            'service_categories_id' => 'required|integer',
            'cover_imag' => 'nullable|image',
            'cover_image' => 'nullable|image',
            'featured_image' => 'nullable|image',
            'order' => 'nullable|integer',
        ]);

        $input = $request->all();
        
        $title = $input['title'];
        $slug = Str::slug($title, '-');
        $input['slug'] = $slug;

        if($request->hasFile('cover_image'))
        {
            Storage::delete($service->cover_image);
            $path = $request->file('cover_image')->store('public/project');
            $input['cover_image'] = $path;
        } 

        if($request->hasFile('featured_image'))
        {
            Storage::delete($service->featured_image);
            $path = $request->file('featured_image')->store('public/project');
            $input['featured_image'] = $path;
        } 

        if(empty($input['order']))  {
            $max_order = Service::max('order');
            $input['order'] += $max_order;
        }

        $service->update($input);
        return redirect()->back()->with('success_msg', 'Project Updated Successfully.');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $service = Service::where('id', $array[$i])->first();
                Storage::delete($service->cover_image);
                Storage::delete($service->featured_image);
                $service->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
