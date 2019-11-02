<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class noidungcontroller extends Controller
{
    public function shownoidung($id1){
        $data= DB::table('tintuc')->where('id',$id1)->get();
        return view('mainPage.single-post')->with('data',$data);

     

    }
}
