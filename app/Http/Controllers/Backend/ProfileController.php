<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class ProfileController extends Controller
{
    public function index()
    {
        $user = Auth()->user();
        // dd($user);
        return view('backend.profile.index', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'confirmed',
        ]);
            
        // dd($request->all());
        $user = User::findOrFail($id);
        $user->email = $request->email;
        if ($request['password']) {
            $user->password = bcrypt($request->password);
        }
        $user->save();
        return redirect()->back()->with('success_msg', 'User Credentials Changed Successfully');
    }
}
