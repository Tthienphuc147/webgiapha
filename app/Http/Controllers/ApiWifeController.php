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
}