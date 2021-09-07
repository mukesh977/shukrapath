<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Branch;
use Illuminate\Http\Request;

class BranchController extends Controller
{
    protected $index_view = 'backend.branch.index';
    protected $create_view = 'backend.branch.create';
    protected $edit_view = 'backend.branch.edit';

    public function index()
    {
        $branch = Branch::asc()->get();
        // dd($feature);
        return view($this->index_view, compact('branch'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:191',
            'order' => 'nullable|integer',
        ]);

        $input = $request->all();

        if($input['order'] == null){
            $order = Branch::max('order');
            $input['order'] = $order + 1;
        }

        Branch::create($input);
        return redirect()->back()->with('success_msg', 'Branch Added Successfully');
    }

    public function edit(Branch $branch)
    {
        return view($this->edit_view, compact('branch'));
    }

    
    public function update(Request $request, Branch $branch)
    {
        $request->validate([
            'title' => 'required|string|max:191',
        ]);

        $input = $request->all();
        
        if($input['order'] == null){
            $order = Branch::max('order');
            $input['order'] = $order + 1;
        }

        $branch->update($input);

        return redirect()->back()->with('success_msg', 'Branch Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $features = Branch::where('id', $array[$i])->first();
                $features->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
