<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Department;

class DepartmentController extends Controller
{
    public function index()
    {
        $department = Department::orderBy('order', 'asc')->get();
        // dd($department);
        return view('backend.department.index', compact('department'));
    }

    public function create()
    {
        return view('backend.department.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'department_name' => 'required|string',
            'order' => 'nullable|integer|max:100',
        ]);

        $input = $request->all();
        if ($input['order'] == null) {
            $order = Department::max('order');
            $input['order'] = $order + 1;
        }
        Department::create($input);
        return redirect()->back()->with('success_msg', 'Data Stored Successfully');
    }

    public function edit($id)
    {
        try
        {
            $department = Department::findOrFail($id);
        }catch(\Exception $e){
            return redirect()->back()->with('error_msg', 'OOps! Table not found.');
        }
        return view('backend.department.edit', compact('department'));

    }

    public function update(Request $request,$id)
    {
        // dd($request->all());        
        $request->validate([
            'department_name' => 'required|string',
            'order' => 'nullable|integer|max:100',
        ]);

        $input = $request->all();
        if ($input['order'] == null) {
            $order = Department::max('order');
            $input['order'] = $order + 1;
        }
        $department = Department::findOrFail($id);
        $department->update($input);
        return redirect()->back()->with('success_msg', 'Data Updated Successfully');
    }

    public function destroy($id)
    {
        try{
            $department = Department::findOrFail($id);
            $department->delete();
        }catch(\Exception $e)
        {
            return redirect()->back()->with('error_msg', 'Department name with that id does not found.');
        }
        return redirect()->back()->with('success_msg', 'Data Deleted Successfully.');
    }
}
