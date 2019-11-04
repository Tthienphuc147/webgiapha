<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ApiChildrenController extends Controller
{
    public function show($id)
    {
        $children=DB::table('children')->where('id_user_dady',$id)->get();
        return response()->json($children, Response::HTTP_OK);
    }
    public function store(Request $request)
    {
        $userName=$request->input('name');
        $userSex=$request->input('sex');
        $userNote=$request->input('note');
        $id=$request->input('id');
        $children='App\Children'::where('id',$id)->first();
        $status=array('isSuccess'=>"True");
        $statuss=array('status'=>$status);
        if($children!=null)
        {
            $children->name=$userName;
            if($userSex==1)$children->sex=$userSex;
            else $children->sex=0;
            $children->note=$userNote;
            $children->save();
            return response()->json($statuss, Response::HTTP_OK); 
        }
        $status=array('isSuccess'=>"False");
        $statuss=array('status'=>$status);
        return response()->json($statuss, Response::HTTP_OK);       
    }
}