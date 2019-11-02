<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    public function showHome()
    {
        $tintucrandom=DB::table('tintuc')->inRandomOrder()->take(1)->get();
        $tintuc=DB::table('tintuc')->get();
        return view('mainPage.home',['tintucrandom' => $tintucrandom],['tintuc' => $tintuc]);
    }
    public function showSinglePost()
    {
        return view('mainPage.single-post');
    }
    public function showCategory()
    {
        return view('mainPage.category');
    }
    public function showGiaPha()
    {
        return view('mainPage.giapha');
    }
    public function showLogin()
    {
        return view('mainPage.login');
    }
}