<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class userController extends Controller
{
    public function userproseslogin(Request $request){
        $email = $request->email;
        $pasw= $request->pasw;
        $condition = ['email_users'=>$email, 'password_users'=>$pasw];
        $users = User::where($condition)->get();
        foreach($users as $u){
            $nama = $u->email_users;
        }

        $sesi = session()->put('nama', $nama);

        if(!$users){
            return redirect('/');
        }else{
            return redirect('home');
        }
    }

    public function home(){
        $user = User::paginate(5);
        return view('home', ['user'=>$user]);
    }

    public function userprosescari(Request $request){
        $cari = $request->cari;
        $user = User::where('email_users', 'like', '%' .$cari. '%')->paginate();
        return view('home', ['user'=>$user]);
    }

    public function formuliruser(){
        return view('formuliruser');
    }

    public function formedit($id){

        $user = User::find($id);
        return view('formuliredituser', ['user'=>$user]);
    }

    public function simpan(Request $request){
        User::create([
            'email_users'=>$request->email,
            'password_users'=>$request->pasw
            
        ]);
        return redirect("home");
    }

    public function edit($id, Request $request){
       $user = User::find($id);
       $user->email_users = $request->email;
       $user->password_users = $request->pasw; 
       $user->save();
       return redirect('home');
    }

    public function delete($id){
        $user = User::find($id);
        $user->delete();
        return redirect('home');
    }
}
