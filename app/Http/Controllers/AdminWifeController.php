<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Wife;


class AdminWifeController extends Controller
{
    public function showDanhSach()
    {
        $idSessionadmin=1;
        $dataWife;
        $id=1;
        if($idSessionadmin==1)
        {
            $dataWife='App\Wife'::orderby('id','desc')->paginate(10);
        }
        else {
            $dataWife='App\Wife'::where('id_user',$id)->orderby('id','desc')->paginate(10);
        }
        return view('admin.wife.admin-danhsachwife')->with('datawife',$dataWife);
    }
    public function showAddwife()
    {
        return view('admin.wife.admin-addwife');
    }
    public function showEditwife($idWife)
    {
        $idSessionadmin=1;
        $id=1;
        $dataWife;
        $dataListHusband;
        $dataHusband;
        if($idSessionadmin==1)
        {
            
            $dataWife='App\Wife'::where('id',$idWife)->first();
            $id=-1;
            if($dataWife!=null)$id=$dataWife->id_user;
            $dataHusband='App\Husband'::where('id',$id)->first();
            $dataListHusband='App\Husband'::where('id','!=',$id)->get();
        }
        else
        {
            $dataWife='App\Wife'::where('id_user',$id)->where('id',$idWife)->first();
            $dataHusband='App\Husband'::where('id',$id)->first();
            $dataListHusband='App\Husband'::where('id','!=',$id)->get();
        }
        if($dataWife==null) {
            return redirect('admin/quanlywife');
            
        }
        
        return view('admin.wife.admin-editwife')->with('datawife',$dataWife)
        ->with('datahusband',$dataHusband)->with('datalisthusband',$dataListHusband);
    }
}