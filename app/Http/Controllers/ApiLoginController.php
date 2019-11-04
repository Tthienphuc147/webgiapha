<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ApiLoginController extends Controller
{
    public function store(Request $request)
    {
        $username=$request->input('username');
        $userpass=$request->input('userpass');
        $husband=DB::table('husband')->where('username',$username)->where('userpass',$userpass)->get();
        if(sizeof($husband)>0)
        {
            $status=array('isSuccess'=>"True");
            $statuss=array('status'=>$status);
            $husbands=array('husband'=>$husband);
            return response()->json([$statuss,$husbands], Response::HTTP_OK);
        }
        $status=array('isSuccess'=>"False");
        $statuss=array('status'=>$status);
        return response()->json($statuss, Response::HTTP_OK);       
    }
}