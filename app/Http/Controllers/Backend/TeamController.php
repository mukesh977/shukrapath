<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Department;
use App\Model\Team;
use Illuminate\Support\Facades\Storage;


class TeamController extends Controller
{
    protected $index_view = 'backend.team.index';

    public function index()
    {
        $members = Team::with('department')
        ->asc()
        ->get();
        return view($this->index_view, compact('members'));
    }

    public function create()
    {
        $departments = Department::orderBy('order', 'asc')->get();
        return view('backend.team.create', compact('departments'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'full_name' => 'required|string|max:199',
            'department_id'=> 'required|integer',
            'order' => 'nullable|integer|max:100',
            'image' => 'nullable|image',
        ]);

        $input = $request->all();
        if($input['order'] == null){
            $order = Team::max('order');
            $input['order'] = $order + 1;
        }

        if($request->hasFile('image'))
        {
            $path = $request->file('image')->store('public/team');
            $input['image'] = $path;
        }  
        
        Team::create($input);
        return redirect()->back()->with('success_msg', 'Data Added Successfully');
    }

    public function edit($id)
    {
        try{
            $member = Team::findOrFail($id);
            $departments = Department::orderBy('order', 'asc')->get();
        }catch(\Exception $e)
        {
            return redirect()->back()->with('error_msg', 'No Data Found');
        }
        return view('backend.team.edit', compact('member', 'departments'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'full_name' => 'required|string|max:199',
            'department_id'=> 'required|integer',
            'order' => 'nullable|integer|max:100',
            'image' => 'nullable|image',
        ]);

        // dd($request->all());
        $team = Team::findOrFail($id);
        $input = $request->all();
        if($input['order'] == null){
            $order = Team::max('order');
            $input['order'] = $order + 1;
        }

        if($request->hasFile('image'))
        {
            Storage::delete($team->image);
            $path = $request->file('image')->store('public/team');
            $input['image'] = $path;
        }  
        
        $team->update($input);
        return redirect()->back()->with('success_msg', 'Data Added Successfully');
    }
    
    public function destroy($id)
    {
        try{
            $team = Team::findOrFail($id);
            Storage::delete($team->image);
            $team->delete();            
        }catch(\Exception $e){
            return redirect()->back()->with('error_msg', 'Opps! Deletion Failed');
        }
        return redirect()->back()->with('success_msg', 'Data Deleted Successfully');
    }
}
