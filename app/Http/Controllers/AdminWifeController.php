<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminWifeController extends Controller
{
    public function showDanhSach()
    {
        return view('admin.wife.admin-danhsachwife');
    }
    public function showAddwife()
    {
        return view('admin.wife.admin-addwife');
    }
    public function showEditwife()
    {
        return view('admin.wife.admin-editwife');
    }
}