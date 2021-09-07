<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Calendar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CalendarController extends Controller
{
    public function index()
    {
        $calendar = Calendar::firstOrFail();


        return view('backend.calendar.index', compact('calendar'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $calendar = Calendar::firstOrFail();

        $input = $request->all();
        // dd($input);
        if ($request->hasFile('image')) {
            Storage::delete($calendar->image);
            $path = $request->file('image')->store('public/image');
            $input['image'] = $path;
        }

        if ($request->hasFile('file')) {
            Storage::delete($calendar->file);
            $path = $request->file('file')->store('public/file');
            $input['file'] = $path;
        }

        $calendar->update($input);

        return redirect()->back()->with('success_msg', 'Cakebdar Saved Successfully');
    }
}
