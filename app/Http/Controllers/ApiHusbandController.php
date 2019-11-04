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
}