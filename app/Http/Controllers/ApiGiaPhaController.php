<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ApiGiaPhaController extends Controller
{
    public function show($id)
    {
        $branch=DB::table('branch')->distinct()->get(['life']);
        $husband=DB::table('husband')->where('id',$id)->get();
        $husband1=DB::table('husband')->get();
        $arrwife=DB::table('wife')->where('id_user',$id)->get();
        $children1=DB::table('children')->where('id_user_dady',$id)->where('id_user_information','!=',-1)->where('sex',1)->get();
        $listchildren1=DB::table('children')->where('id_user_dady',$id)->get();
        $arrwife1=array();
        if(sizeof($children1)>0)$arrwife1=DB::table('wife')->where('id_user',$children1[0]->id_user_dady)->get();
        $arr2[10]= array();
        $arrwife2[10]=array();
        $listchildren2[20]=array();

        $arr3[10][10]=array();
        $arrwife3[10][10]=array();
        $listchildren3[20][20]=array();

        $arr4[10][10][10]=array();
        $arrwife4[10][10][10]=array();
        $listchildren4[20][20][20]=array();

        $arr5[10][10][10][10]=array();
        $arrwife5[10][10][10][10]=array(); 
        $listchildren5[20][20][20][20]=array();

        for($i=0;$i<sizeof($children1);$i++)
        {
            
            $arr2[$i]=DB::table('children')->where('id_user_dady',$children1[$i]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
            $arrwife2[$i]=DB::table('wife')->where('id_user',$children1[$i]->id_user_information)->get();
            $listchildren2[$i]=DB::table('children')->where('id_user_dady',$children1[$i]->id_user_information)->get();
            for($j=0;$j<sizeof($arr2[$i]);$j++){
                $arr3[$i][$j]=DB::table('children')->where('id_user_dady',$arr2[$i][$j]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                $arrwife3[$i][$j]=DB::table('wife')->where('id_user',$arr2[$i][$j]->id_user_information)->get();
                $listchildren3[$i][$j]=DB::table('children')->where('id_user_dady',$arr2[$i][$j]->id_user_information)->get();
                for($k=0;$k<sizeof($arr3[$i][$j]);$k++){
                    $arr4[$i][$j][$k]=DB::table('children')->where('id_user_dady',$arr3[$i][$j][$k]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                    $arrwife4[$i][$j][$k]=DB::table('wife')->where('id_user',$arr3[$i][$j][$k]->id_user_information)->get();
                    $listchildren4[$i][$j][$k]=DB::table('children')->where('id_user_dady',  $arr3[$i][$j][$k]->id_user_information)->get();
                    for($l=0;$l<sizeof($arr4[$i][$j][$k]);$l++){
                        $arr5[$i][$j][$k][$l]=DB::table('children')->where('id_user_dady',$arr4[$i][$j][$k][$l]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                        $arrwife5[$i][$j][$k][$l]=DB::table('wife')->where('id_user',$arr4[$i][$j][$k][$l]->id_user_information)->get();
                        $listchildren5[$i][$j][$k][$l]=DB::table('children')->where('id_user_dady', $arr4[$i][$j][$k][$l]->id_user_information)->get();
                       
                    } 
                } 
                
                
            }
            

            
        }
        $arrayHusBand1 = array('Husband-The 1' =>$husband );
        $arrayChildren1 = array('Children-The 1' => $listchildren1);
        $arrayWife1=array('Wife-The 1'=>$arrwife);
        $arrayHusBand2 = array('Husband-The 2' =>$children1 );
        $arrayChildren2 = array('Children-The 2' => $listchildren2);
        $arrayWife2=array('Wife-The 2'=>$arrwife2);
        $arrayHusBand3 = array('Husband-The 3' =>$arr2 );
        $arrayChildren3 = array('Children-The 3' => $listchildren3);
        $arrayWife3=array('Wife-The 3'=>$arrwife3);
        $arrayHusBand4 = array('Husband-The 4' =>$arr3 );
        $arrayChildren4 = array('Children-The 4' => $listchildren4);
        $arrayWife4=array('Wife-The 5'=>$arrwife4);
        $arrayHusBand5 = array('Husband-The 5' =>$arr4 );
        $arrayChildren5 = array('Children-The 5' => $listchildren5);
        $arrayWife5=array('Wife-The 5'=>$arrwife5);
        return response()->json([$arrayHusBand1,$arrayChildren1,$arrayWife1,$arrayHusBand2,$arrayChildren2,$arrayWife2,
        $arrayHusBand3,$arrayChildren3,$arrayWife3,$arrayHusBand4,$arrayChildren4,$arrayWife4,
        $arrayHusBand5,$arrayChildren5,$arrayWife5], Response::HTTP_OK);
       
    }
}