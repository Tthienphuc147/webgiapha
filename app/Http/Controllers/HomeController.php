<?php

namespace App\Http\Controllers;



class HomeController extends Controller
{
    public function showHome()
    {
        return view('mainPage.home');
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