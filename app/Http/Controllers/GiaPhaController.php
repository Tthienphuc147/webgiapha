<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;


class GiaPhaController extends Controller
{

    public function showGiaPha($id)
    {
        $branch=DB::table('branch')->distinct()->get(['life']);
        $husband=DB::table('husband')->where('id',$id)->get();
        $husband1=DB::table('husband')->get();
        $arrwife=DB::table('wife')->where('id_user',$id)->get();
        $children1=DB::table('children')->where('id_user_dady',$id)->where('id_user_information','!=',-1)->where('sex',1)->get();
        $listchildren1=DB::table('children')->where('id_user_dady',$id)->take(7)->get();
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
            $listchildren2[$i]=DB::table('children')->where('id_user_dady',$children1[$i]->id_user_information)->take(7)->get();
            for($j=0;$j<sizeof($arr2[$i]);$j++){
                $arr3[$i][$j]=DB::table('children')->where('id_user_dady',$arr2[$i][$j]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                $arrwife3[$i][$j]=DB::table('wife')->where('id_user',$arr2[$i][$j]->id_user_information)->get();
                $listchildren3[$i][$j]=DB::table('children')->where('id_user_dady',$arr2[$i][$j]->id_user_information)->take(7)->get();
                for($k=0;$k<sizeof($arr3[$i][$j]);$k++){
                    $arr4[$i][$j][$k]=DB::table('children')->where('id_user_dady',$arr3[$i][$j][$k]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                    $arrwife4[$i][$j][$k]=DB::table('wife')->where('id_user',$arr3[$i][$j][$k]->id_user_information)->get();
                    $listchildren4[$i][$j][$k]=DB::table('children')->where('id_user_dady',  $arr3[$i][$j][$k]->id_user_information)->take(7)->get();
                    for($l=0;$l<sizeof($arr4[$i][$j][$k]);$l++){
                        $arr5[$i][$j][$k][$l]=DB::table('children')->where('id_user_dady',$arr4[$i][$j][$k][$l]->id_user_information)->where('id_user_information','!=',-1)->where('sex',1)->get();
                        $arrwife5[$i][$j][$k][$l]=DB::table('wife')->where('id_user',$arr4[$i][$j][$k][$l]->id_user_information)->get();
                        $listchildren5[$i][$j][$k][$l]=DB::table('children')->where('id_user_dady', $arr4[$i][$j][$k][$l]->id_user_information)->take(7)->get();
                       
                    } 
                } 
                
                
            }
            

            
        }
        
        
     return view('mainPage.giapha')->with('branch',$branch)->with('husband',$husband)->with('husband1',$husband1)
     ->with('children1',$children1)->with('listchildren1',$listchildren1)
     ->with('arr2',$arr2)->with('listchildren2',$listchildren2)
     ->with('arr3',$arr3)->with('listchildren3',$listchildren3)
     ->with('arr4',$arr4)->with('listchildren4',$listchildren4)
     ->with('arr5',$arr5)
     ->with('listchildren5',$listchildren5)
     ->with('arrwife',$arrwife)->with('arrwife1',$arrwife1)->with('arrwife2',$arrwife2)->with('arrwife3',$arrwife3)->with('arrwife4',$arrwife4)->with('arrwife5',$arrwife5);
    }
 

}