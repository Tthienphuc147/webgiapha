<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ApiWifeController extends Controller
{
    public function show($id)
    {
        $wife=DB::table('wife')->where('id_user',$id)->get();

        return response()->json($wife, Response::HTTP_OK);
    }
    public function store(Request $request)
    {
        $userName=$request->input('name');
        $userDayavoid=$request->input('dayavoid');
        $userNote=$request->input('note');
        $id=$request->input('id');
        $wife='App\Wife'::where('id',$id)->first();
        $status=array('isSuccess'=>"True");
        $statuss=array('status'=>$status);
        if($wife!=null)
        {
            $wife->name=$userName;
            $wife->dayavoided=$userDayavoid;
            $wife->note=$userNote;
            $wife->save();
            return response()->json($statuss, Response::HTTP_OK); 
        }
        $status=array('isSuccess'=>"False");
        $statuss=array('status'=>$status);
        return response()->json($statuss, Response::HTTP_OK);       
    }
}