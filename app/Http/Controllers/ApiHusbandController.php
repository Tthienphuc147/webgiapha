<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ApiHusbandController extends Controller
{
    public function show($id)
    {
        $husband=DB::table('husband')->where('id',$id)->get();
        $status=array('isSuccess'=>"True");
        $statuss=array('status'=>$status);
        $husbands=array('husband'=>$husband);
        return response()->json([$statuss,$husbands], Response::HTTP_OK);
    }
    public function store(Request $request)
    {
        $userName=$request->input('name');
        $userBirthDay=$request->input('birthday');
        $userDayavoid=$request->input('dayavoid');
        $userNote=$request->input('note');
        $userPass=$request->input('pass');
        $id=$request->input('id');
        $husband='App\Husband'::where('id',$id)->first();
        $status=array('isSuccess'=>"True");
        $statuss=array('status'=>$status);
        if($husband!=null)
        {
            $husband->name=$userName;
            $husband->birthday=$userBirthDay;
            $husband->dayavoided=$userDayavoid;
            $husband->note=$userNote;
            if($userPass!="")$husband->userpass=$userPass;
            $husband->save();
            return response()->json($statuss, Response::HTTP_OK); 
        }
        $status=array('isSuccess'=>"False");
        $statuss=array('status'=>$status);
        return response()->json($statuss, Response::HTTP_OK);       
    }
}