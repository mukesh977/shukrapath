<?php
    namespace App\Http\Controllers\Backend;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    use App\Model\Homepage;
    use Illuminate\Support\Facades\Storage;

    class HomepageController extends Controller
    {
        public function index()
        {
            try{
                $homepage = Homepage::firstOrFail();            
            }catch(\Exception $e)
            {
                return redirect()->back()->with('error_msg', 'Table not found!');
            }
            return view('backend.homepage.index', compact('homepage'));
        }

        public function update(Request $request, $id)
        {

            $homepage = Homepage::findOrFail($id);
            $input = $request->all();
            // dd($input);

            if($request->hasFile('cover_image'))
            {
                Storage::delete($homepage->cover_image);
                $path = $request->file('cover_image')->store('public/homepage');
                $input['cover_image'] = $path;
            }


            if($request->hasFile('banner_image'))
            {
                Storage::delete($homepage->banner_image);
                $path = $request->file('banner_image')->store('public/homepage');
                $input['banner_image'] = $path;
            }
            $homepage->update($input);

            return redirect()->back()->with('success_msg', 'Data Updated Successfully.');

        }

    }
