<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    protected $index_view = 'backend.event.index';
    protected $create_view = 'backend.event.create';
    protected $edit_view = 'backend.event.edit';

    public function index()
    {
        $event = Event::latest()->get();
        // dd($feature);
        return view($this->index_view, compact('event'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:191',
            'date' => 'required',
            'location'=>'required|string|max:191',
        ]);

        $input = $request->all();

        Event::create($input);
        return redirect()->back()->with('success_msg', 'Event Added Successfully');
    }

    public function edit(Event $event)
    {
        return view($this->edit_view, compact('event'));
    }

    public function update(Request $request, Event $event)
    {
        $request->validate([
            'title' => 'required|string|max:191',
            'date' => 'required',
            'location'=>'required|string|max:191',
        ]);

        $input = $request->all();
        
        $event->update($input);

        return redirect()->back()->with('success_msg', 'Event Updated Successfully');
    }

    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $event = Event::where('id', $array[$i])->first();
                $event->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }

}
