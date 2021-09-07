<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Affiliation;
use Illuminate\Support\Facades\Storage;

class AffiliationController extends Controller
{
    public function index()
    {
        $partner = Affiliation::asc()->get();
        return view('backend.affiliation.index', compact('partner'));
    }

    public function create()
    {
        return view('backend.affiliation.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'order' => 'nullable|integer|max:100',
            'image' => 'nullable|image',
            'cover_image' => 'nullable|image',
        ]);
        // dd($request->all());

        $input = $request->all();
        if ($input['order'] == null) {
            $order = Affiliation::max('order');
            $input['order'] = $order + 1;
        }
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('public/partner');
            $input['image'] = $path;
        }
        if ($request->hasFile('cover_image')) {
            $path = $request->file('cover_image')->store('public/partner');
            $input['cover_image'] = $path;
        }
        Affiliation::create($input);
        return redirect()->back()->with('success_msg', 'Data Added Successfully.');
    }

    public function edit($id)
    {
        // dd('edit');
        $partner = Affiliation::findOrFail($id);
        return view('backend.affiliation.edit', compact('partner'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'order' => 'nullable|integer|max:100',
            'cover_image' => 'nullable|image',
            'image' => 'nullable|image',
        ]);
        // dd($request->all());

        $input = $request->all();
        $partner = Affiliation::findOrFail($id);
        if ($input['order'] == null) {
            $order = Affiliation::max('order');
            $input['order'] = $order + 1;
        }
        if ($request->hasFile('image')) {
            Storage::delete($partner->image);
            $path = $request->file('image')->store('public/partner');
            $input['image'] = $path;
        }
        if ($request->hasFile('cover_image')) {
            Storage::delete($partner->cover_image);
            $path = $request->file('cover_image')->store('public/partner');
            $input['cover_image'] = $path;
        }
        $partner->update($input);
        return redirect()->back()->with('success_msg', 'Data Updated Successfully.');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $affiliation = Affiliation::where('id', $array[$i])->first();
                Storage::delete($affiliation->image);
                $affiliation->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }

}
