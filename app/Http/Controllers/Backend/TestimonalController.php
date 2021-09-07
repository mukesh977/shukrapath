<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Testimonal;
use Illuminate\Support\Facades\Storage;

class TestimonalController extends Controller
{
    public function index()
    {
        $testimonal = Testimonal::all();
        return view('backend.testimonal.index', compact('testimonal'));
    }

    public function create()
    {
        return view('backend.testimonal.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'author' => 'required|string|max:191',
            'order' => 'nullable|integer|max:100',
            'image' => 'nullable',
        ]);
        // dd($request->all());
        $input = $request->all();

        if ($input['order'] == null) {
            $order = Testimonal::max('order');
            $input['order'] = $order + 1;
        }

        if ( isset($request->messege_from_chariman) ) {
            $input['messege_from_chariman'] = 1;
        }


        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('public/testimonal');
            $input['image'] = $path;
        }
        Testimonal::create($input);
        return redirect()->back()->with('success_msg', 'Data Added Successfully.');
    }

    public function edit($id)
    {
        // dd('edit');
        $testimonal = Testimonal::findOrFail($id);
        return view('backend.testimonal.edit', compact('testimonal'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'author' => 'required',
            'order' => 'nullable|integer|max:100',
            'image' => 'nullable',
        ]);
        // dd($request->all());

        $testimonal = Testimonal::findOrFail($id);
        $input = $request->all();
        if ($input['order'] == null) {
            $order = Testimonal::max('order');
            $input['order'] = $order + 1;
        }
        if ( isset($request->messege_from_chariman) ) {
            $input['messege_from_chariman'] = 1;
        }
        if ($request->hasFile('image')) {
            Storage::delete($testimonal->image);
            $path = $request->file('image')->store('public/testimonal');
            $input['image'] = $path;
        }
        $testimonal->update($input);
        return redirect()->back()->with('success_msg', 'Data Updated Successfully.');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $testimonal = Testimonal::where('id', $array[$i])->first();
                Storage::delete($testimonal->image);
                $testimonal->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
