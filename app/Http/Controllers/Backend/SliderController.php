<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class SliderController extends Controller
{
    protected $index_view = 'backend.slider.index';
    protected $create_view = 'backend.slider.create';
    protected $edit_view = 'backend.slider.edit';

    public function index()
    {
        $sliders = Slider::asc()->get();
        // dd($sliders);
        return view($this->index_view, compact('sliders'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('public/sliders');
            $input['image'] = $path;
        }

        if(empty($input['order'])){
            $order = Slider::max('order');
            $input['order'] = $order + 1;
        }

        Slider::create($input);

        return redirect()->route('backend.slider.index')->with('success_msg', 'Slider Added Successfully');
    }

    public function show($id)
    {
        //
    }

    public function edit(Slider $slider)
    {
        return view($this->edit_view, compact('slider'));
    }

    public function update(Request $request, Slider $slider)
    {

        $input = $request->all();


        if ($request->hasFile('image')) {
            Storage::delete($slider->image);
            $path = $request->file('image')->store('public/sliders');
            $input['image'] = $path;
        }

        if(empty($input['order'])){
            $order = Slider::max('order');
            $input['order'] = $order + 1;
        }

        $slider->update($input);

        return redirect()->route('backend.slider.index')->with('success_msg', 'Slider Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if ($request->ajax()) {
            $array = $request->input('ch_array');
            for ($i = 0; $i < count($array); $i++) {
                $sliders = Slider::where('id', $array[$i])->first();
                Storage::delete($sliders->image);
                $sliders->delete();
            }
            return response()->json(array('msg' => "Data deleted successfully"), 200);
        }
    }
}
