<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Faq;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    protected $index_view = 'backend.faq.index';
    protected $create_view = 'backend.faq.create';
    protected $edit_view = 'backend.faq.edit';

    public function index()
    {
        $faq = Faq::asc()->get();
        // dd($feature);
        return view($this->index_view, compact('faq'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'question' => 'required|string|max:191',
            'order' => 'nullable|integer',
        ]);

        $input = $request->all();

        if($input['order'] == null){
            $order = Faq::max('order');
            $input['order'] = $order + 1;
        }

        Faq::create($input);
        return redirect()->back()->with('success_msg', 'FAQ Added Successfully');
    }

    public function edit(Faq $faq)
    {
        return view($this->edit_view, compact('faq'));        
    }

    public function update(Request $request, Faq $faq)
    {
        $request->validate([
            'question' => 'required|string|max:191',
            'order' => 'nullable|integer',
        ]);

        $input = $request->all();
        
        if($input['order'] == null){
            $order = Faq::max('order');
            $input['order'] = $order + 1;
        }

        $faq->update($input);

        return redirect()->back()->with('success_msg', 'FAQ Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $faq = Faq::where('id', $array[$i])->first();
                $faq->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
