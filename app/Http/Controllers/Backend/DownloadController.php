<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Download;
use Response;
use Illuminate\Support\Facades\Storage;


class DownloadController extends Controller
{
    protected $index_view = 'backend.download.index';
    protected $create_view = 'backend.download.create';



    public function index()
    {
        $downloads = Download::latest()->get();

        return View($this->index_view)->with(array('downloads' => $downloads));
    }

    public function create()
    {
        return view($this->create_view);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:191',
        ]);

        // dd($request->file);
        $input = $request->all();

        if($request->hasFile('file'))
        {
            $file = $request->file('file');
            
            $filename = $file->getClientOriginalName();


            $path = $request->file('file')->store('public/uploaded_file');   
            $input['file_name'] = $path;
            
            $input['original_name'] = $filename;
        }else{
            return redirect()->back()->with('error_msg', 'File not uploaded');
        }

        Download::create($input);
        return redirect()->back()->with('success_msg', 'File Uploaded.');
    }

    public function show(Download $download)
    {
        try
        {
            // return Response::download($download->file_name, $download->title);

            return Storage::download($download->file_name, $download->original_name);
// return Storage::download('file.jpg', $name, $headers);


        }
        catch(\Exception $e){
            return redirect()->back()->with('error_msg', 'File Not Found.');
        }
    }



    public function bulk_delete(Request $request)
    {
        if ($request->ajax()) {
            $array = $request->input('ch_array');
            foreach ($array as $value) {
                $download = Download::where('id', $value)->first();
                Storage::delete($download->file_name);
                $download->delete();
            }



            return response()->json(array('msg' => "file deleted successfully"), 200);
        }
    }
}
