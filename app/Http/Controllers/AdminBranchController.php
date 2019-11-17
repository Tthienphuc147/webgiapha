<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminBranchController extends Controller
{
    public function showDanhSach()
    {
        return view('admin.branch.admin-danhsachbranch');
    }
    public function showAddbranch()
    {
        return view('admin.branch.admin-addbranch');
    }
    public function showEditbranch()
    {
        return view('admin.branch.admin-editbranch');
    }
}