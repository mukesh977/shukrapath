<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\ServiceCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;


class ServiceCategoryController extends Controller
{
    protected $view_index = 'backend.service_cat.index';
    protected $view_create = 'backend.service_cat.create';
    protected $view_edit = 'backend.service_cat.edit';

    public function index()
    {
        $serviceCategory = ServiceCategory::asc()->get();
        return view($this->view_index, compact('serviceCategory'));
    }

    public function create()
    {
        return view($this->view_create);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:191|unique:service_categories,name',
            'order' => 'nullable|integer|max:100',
            ]);

        $input = $request->all();

        $name = $input['name'];
        $slug = Str::of($name)->slug('-');
        $input['slug'] = $slug;

        if( empty($input['order']) )    {
            $max_order = ServiceCategory::max('order');
            $input['order'] = $max_order + 1;
        }

        ServiceCategory::create($input);
        return redirect()->back()->with('success_msg', 'Service Category Added Successfully');
    }

    public function edit(ServiceCategory $serviceCategory)
    {
        return view($this->view_edit, compact('serviceCategory'));
    }

    public function update(Request $request, ServiceCategory $serviceCategory)
    {
        $this->validate($request, [
            'name' => 'required|string|max:191|unique:service_categories,name,'.$serviceCategory->id,
            'order' => 'nullable|integer|max:100',
        ]);

        $input = $request->all();
        $name = $input['name'];
        $slug = Str::of($name)->slug('-');
        $input['slug'] = $slug;


        if( empty($input['order']) )    {
            $max_order = ServiceCategory::max('order');
            $input['order'] = $max_order + 1;
        }

        $serviceCategory->update($input);
        return redirect()->back()->with('success_msg', 'Service Category Updated Successfully.');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $serviceCategory = ServiceCategory::where('id', $array[$i])->first();
                $serviceCategory->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
