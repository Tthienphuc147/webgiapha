<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminHusbandController extends Controller
{
    public function showDanhSach()
    {
        return view('admin.husband.admin-danhsachhusband');
    }
    public function showAddHusband()
    {
        return view('admin.husband.admin-addhusband');
    }
    public function showEditHusband()
    {
        return view('admin.husband.admin-edithusband');
    }
}