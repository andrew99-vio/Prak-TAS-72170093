<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dosen;

class DosenController extends Controller
{
    public function dosen(){
        $dosen = Dosen::paginate(5);
        return view('dosen', ['dosen'=>$dosen]);
    }

    public function dosenprosescari(Request $request){
        $cari = $request->cari;
        $dosen = Dosen::where('nama', 'like', '%' .$cari. '%')->paginate();
        return view('dosen', ['dosen'=>$dosen]);
    }

    public function formulirdosen(){
        return view('formulirdosen');
    }

    public function formeditdosen($id){

        $dosen = Dosen::find($id);
        return view('formulireditdosen', ['dosen'=>$dosen]);
    }

    public function simpandosen(Request $request)
    {
        $pakar = implode(",", $request->get('pakar'));
        Dosen::create([
            'nidn'=>$request->nidn,
            'nama'=>$request->nama,
            'status'=>$request->status,
            'jafung'=>$request->jafung,
            'pakar'=>$pakar
        ]);
        return redirect("dosen");
    }

    public function editdosen($id, Request $request){
        $dosen = Dosen::find($id);
        $pakar = implode(",", $request->get('pakar'));
        $dosen->nidn = $request->nidn;
        $dosen->nama=$request->nama;
        $dosen->status=$request->status;
        $dosen->jafung=$request->jafung;
        $dosen->pakar=$pakar;
        $dosen->save();
        return redirect('/dosen');

    }

    public function deletedosen($id){
        $dosen = Dosen::find($id);
        $dosen->delete();
        return redirect('dosen');
    }
}
