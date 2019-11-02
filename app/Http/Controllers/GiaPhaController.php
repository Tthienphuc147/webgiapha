<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class GiaPhaController extends Controller
{

    public function showGiaPha()
    {
        $branch=DB::table('branch')->get();
     // $husband=DB::table('husband')->where('id',$branch[0]->id)->get();
        return view('mainPage.giapha',['branch' => $branch]);
    }
 
}