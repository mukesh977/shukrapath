<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Apply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ApplyMailable;
use App\Model\Setting;
use Illuminate\Support\Facades\App;
use PDF;
use Illuminate\Support\Facades\Storage;

class ApplyController extends Controller
{
    protected $index_view = 'backend.apply.index';
    protected $show_view = 'backend.apply.show';
    protected $create_view = 'frontend.apply';

    public function index()
    {
        $applies = Apply::latest()->paginate(10);

        return view($this->index_view, compact('applies'));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:191',
            'date_of_birth' => 'required',
            'father_name' => 'required|max:199',
            'mother_name' => 'required|max:199',
            'grandfather_name' => 'required|max:199',
            'spouse_name' => 'nullable|max:199',
            // 'citizenship_permanent_address' => 'required|max:199',
            // 'citizenship_zone_state' => 'required|max:199',
            // 'citizenship_district' => 'required|max:199',
            // 'citizenship_rm_mc_ward' => 'required|max:199',
            // 'permanent_address' => 'required|max:199',
            // 'permanent_state' => 'required|max:199',
            // 'permanent_district' => 'required|max:199',
            // 'permanent_rm_mc_ward' => 'required|max:199',
            // 'permanent_tole' => 'required|max:199',
            // 'temporary_address' => 'required|max:199',
            // 'present_state' => 'required|max:199',
            // 'present_district' => 'required|max:199',
            // 'present_rm_mc_ward' => 'required|max:199',
            // 'present_tole' => 'required|max:199',
            // 'citizenship_no' => 'required|numeric|digits_between:0,11',
            // 'citizenship_issued_district' => 'required|max:199',
            // 'passport_no' => 'required|numeric|digits_between:0,11',
            // 'nationality' => 'required|max:199',
            // 'occupation' => 'required|max:199',
            // 'contact_no_home' => 'nullable|numeric|digits_between:0,11',
            // 'contact_no_office' => 'nullable|numeric|digits_between:0,11',
            // 'mobile_no' => 'required|numeric|digits_between:0,11',
            // 'photo' => 'required',
            // 'location_map' => 'required',
            // 'signature' => 'required',
        ]);

        $input = $request->all();

        if ($request->hasFile('photo')) {
            $path = $request->file('photo')->store('public/document');
            $input['photo'] = $path;
        }
        if ($request->hasFile('signature')) {
            $path = $request->file('signature')->store('public/document');
            $input['signature'] = $path;
        }
        if ($request->hasFile('location_map')) {
            $path = $request->file('location_map')->store('public/document');
            $input['location_map'] = $path;
        }


        $data = Apply::create($input);

        $mail_address = Setting::select('institution_email')->first();
        if ($mail_address) {
            Mail::to($mail_address->institution_email)
            ->queue(new ApplyMailable($data));    
        } else {
            return redirect()->back()->with('success_msg', 'Email of organization not set!');
        }

        return redirect()->back()->with('success_msg', 'Thank you for applying. We will contact you soon.');
    }

    public function show($id)
    {
        $apply = Apply::find($id);
        return view($this->show_view, compact('apply'));
    }

    public function destroy($id)
    {
        Apply::find($id)->delete();
        return redirect()->back()->with('success_msg', 'Deleted Successfully');
    }


    public function download($id)
    {
        $apply = Apply::find($id);
        $pdf = PDF::loadView('backend.apply.download', compact('apply'));
        return $pdf->download($apply->name.'.pdf');
    }


    public function bulk_delete(Request $request)
    {
        if($request->ajax()){
            $array = $request->input('ch_array');
            for( $i = 0; $i<count($array); $i++){
                $apply = Apply::where('id', $array[$i])->first();
                Storage::delete($apply->photo);
                Storage::delete($apply->location_map);
                Storage::delete($apply->signature);
                $apply->delete();
            }
            return response()->json(array('msg'=> "Data deleted successfully"), 200);
        }
    }
}
