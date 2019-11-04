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
}