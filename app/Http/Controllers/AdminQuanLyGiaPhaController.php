<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminQuanLyGiaPhaController extends Controller
{
    public function show()
    {
        return view('admin.admin-quanlygiapha');
    }
}