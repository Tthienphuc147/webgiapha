<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Wife;


class AdminWifeController extends Controller
{
    public function showDanhSach()
    {
        $sessionadmin="admin";
        $dataWife;
        $id;
        $inforPerPage=10;
        if( request()->session()->has('id') )
        {
            $id=request()->session()->get('id');
            if(request()->session()->get('role')==$sessionadmin)$dataWife='App\Wife'::orderby('id','desc')->paginate($inforPerPage);
            else {
                $dataWife='App\Wife'::where('id_user',$id)->orderby('id','desc')->paginate($inforPerPage);
            }
            return view('admin.wife.admin-danhsachwife')->with('datawife',$dataWife);
        }
        else
        {
            return redirect('/login');
        }
        
    }
    public function addWife(Request $request)
    {
        $sessionadmin="admin";
        if( request()->session()->has('id') )
        {
            $id=request()->session()->get('id');
                $dataWife=new Wife();
                if($request->input('name')!="")$dataWife->name=$request->input('name');
                else $dataWife->name="None";
                $dataWife->id_user=$request->input('husband');
                if($request->input('dayavoided')!="")$dataWife->dayavoided=$request->input('dayavoided');
                else $dataWife->dayavoided=null;
                if($request->input('note')!="")$dataWife->note=$request->input('note');
                else $dataWife->note="";
                $dataWife->save();
            
            return redirect('/admin/quanlywife');
        }
        else
        {
            return redirect('/login');
        }

    }
    public function showAddwife()
    {
        $sessionadmin="admin";
        if( request()->session()->has('id') )
        {
            $id=request()->session()->get('id');
            $dataListHusband='App\Husband'::where('id',$id)->get();
            if(request()->session()->get('role')==$sessionadmin)$dataListHusband='App\Husband'::get();
            return view('admin.wife.admin-addwife')->with('datahusband',$dataListHusband);
        }
        else
        {
            return redirect('/login');
        }
    }
    public function editWife(Request $request)
    {
        $sessionadmin="admin";
        if( request()->session()->has('id') )
        {
            $id=request()->session()->get('id');
            if(request()->session()->get('role')==$sessionadmin
            ||$request->input('husband')==$request->session()->get('id'))
            {
                $dataWife='App\Wife'::find($request->input('id_wife'));
                if($request->input('name')!="")$dataWife->name=$request->input('name');
                if($request->input('dayavoided')!="")$dataWife->dayavoided=$request->input('dayavoided');
                if($request->input('note')!="")$dataWife->note=$request->input('note');
                $dataWife->save();
            }
            
            return redirect('/admin/quanlywife');
        }
        else
        {
            return redirect('/login');
        }
    }
    public function deleteWife($idWife)
    {
        $sessionadmin="admin";
        if( request()->session()->has('id') )
        {
            $dataWife='App\Wife'::find($idWife);
            if(request()->session()->get('role')==$sessionadmin
            ||$dataWife->id_user==request()->session()->get('id'))
            'App\Wife'::destroy($idWife);
            
            return redirect('/admin/quanlywife');
        }
        else
        {
            return redirect('/login');
        }
    }
    public function showEditWife($idWife)
    {
        $sessionadmin="admin";
        $dataWife;
        $id;
        $dataHusband;
        if( request()->session()->has('id') )
        {
            $id=request()->session()->get('id');
            if(request()->session()->get('role')==$sessionadmin){
                $dataWife='App\Wife'::where('id',$idWife)->first();
                $dataHusband='App\Husband'::where('id',$id)->first();
            }
            else
            {
                $dataWife='App\Wife'::where('id_user',$id)->where('id',$idWife)->first();
                $dataHusband='App\Husband'::where('id',$id)->first();
            }
            if($dataWife==null) {

                return redirect('admin/quanlywife');
                
            }
        
            return view('admin.wife.admin-editwife')->with('datawife',$dataWife)
            ->with('datahusband',$dataHusband);
        }
        else{
            return redirect('/login');
        }
    }
}