<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminChildController extends Controller
{
    public function showDanhSach()
    {
        return view('admin.child.admin-danhsachchild');
    }
    public function showAddChild()
    {
        return view('admin.child.admin-addchild');
    }
    public function showEditChild()
    {
        return view('admin.child.admin-editchild');
    }
}