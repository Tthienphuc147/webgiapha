<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class AdminTinTucController extends Controller
{
    public function showDanhSach()
    {  $tintuc=DB::table('tintuc')->get();
        return view('admin.admin-danhsachtintuc',['tintuc' => $tintuc]);
    }
}