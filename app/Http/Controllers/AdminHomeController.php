<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminHomeController extends Controller
{
    public function showHome()
    {
        return view('admin.home');
    }
}