<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\News;

use Illuminate\Support\Facades\DB;

class AdminTinTucController extends Controller
{
    public function showDanhSach()
    {$tintuc = DB::table('tintuc')->get();
        return view('admin.tintuc.admin-danhsachtintuc', ['tintuc' => $tintuc]);
    }
    public function showAddNews()
    {
        return view('admin.tintuc.admin-addtintuc');
    }
    public function deleteNews($idtintuc, Request $request)
    {
        if ($request->session()->has('id') && $request->session()->get('role') == 'admin') {
            'App\News'::destroy($idtintuc);
            return redirect('/admin/quanlytintuc');
        } else if ($request->session()->has('id') && $request->session()->get('role') == 'user') {
            return redirect('/admin/quanlytintuc');
        } else {
            return view('mainPage.login');
        }
    }
    public function showEditNews($idtintuc, Request $request)
    {
        if ($request->session()->has('id') && $request->session()->get('role') == "admin") {
            $data = 'App\News'::where('id', $idtintuc)->get();
            return view('admin.tintuc.admin-edittintuc')->with('dtdata', $data);
        } else if ($request->session()->has('id') && $request->session()->get('role') == "user") {
            return redirect('/admin/quanlytintuc');
        } else {
            return view('mainPage.login');
        }
    }
    public function insertNews(Request $request)
    {
        if ($request->session()->has('id') && $request->session()->get('role') == "admin") {
            $data = new News();
            $data->id = $request->input('id');
            if ($request->input('tieude') != "") {
                $data->tieude = $request->input('tieude');
            } else {
                $data->tieude = "chưa nhập";
            }

            if ($request->input('tomtat') != "") {
                $data->tomtat = $request->input('tomtat');
            } else {
                $data->tomtat = "chưa nhập";
            }

            if ($request->input('noidung') != "") {
                $data->noidung = $request->input('noidung');
            } else {
                $data->noidung = "chưa nhập";
            }

            if ($request->hasFile('anhgioithieu')) {
                $img_file = $request->file('anhgioithieu');
                $img_file_extension = $img_file->getClientOriginalExtension();
                $img_file_name = $img_file->getClientOriginalName();
                $random_file_name =$img_file_name;
                while (file_exists('/public/img/' . $random_file_name)) {
                    $random_file_name = $img_file_name;
                }
                $img_file->move('public/img/', $random_file_name);
                $data->anhgioithieu = $random_file_name;
            }
            $data->save();
            return redirect('/admin/quanlytintuc');
        } else if ($request->session()->has('id') && $request->session()->get('role') == "user") {
            return redirect('/admin/quanlytintuc');
        } else {
            return view('mainPage.login');
        }
    }
    public function editNews(Request $request){
        if( $request->session()->has('id') && $request->session()->get('role')== "admin")
        {
            $data=new News();
            $data->id=$request->input('id');
            $datas='App\News'::find($data->id);
            $data->tieude=$request->input('tieude');
            if($data->tieude!='')$datas->tieude=$data->tieude;
            $data->tomtat=$request->input('tomtat');
            if($data->tomtat!="")$datas->tomtat=$data->tomtat;
            if($request->hasFile('anh'))
            {
                $img_file = $request->file('anh');
                $img_file_extension = $img_file->getClientOriginalExtension();
                $img_file_name = $img_file->getClientOriginalName();
                $random_file_name = 'giapha'.'_'.$img_file_name;
                while(file_exists('/public/img/'.$random_file_name))
                {
                    $random_file_name = str_random(4).'_'.$img_file_name;
                }
                $img_file->move('public/img/',$random_file_name);
                $datas->anhgioithieu = $random_file_name;
            }
            $data->noidung=$request->input('noidung');
            if($data->noidung!="")$datas->noidung=$data->noidung;
            $datas->save();
            return redirect('/admin/quanlytintuc');
        }
        else if($request->session()->has('id') && $request->session()->get('role')=="user" ) return redirect('/admin/quanlytintuc');
        else{
            return view('mainPage.login');
        }
}
}
