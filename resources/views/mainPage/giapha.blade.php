@extends('master')

@section('content')


<section class="breadcrumb-area bg-img bg-overlay" style="background-image: url({{ asset('/public/img/breadcrumb.jpg')}});">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content">
                        <h2>GIA PHẢ</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="main-content">
        <div class="archive-post-area ">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-xl-12">
                        
                        <div class="logo1 p-30">
                            <img src="{{ asset('/public/img/1.png')}}" alt="" >
                            <div class="dropdown" style="text-align: center">
                                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" style="width:250px">
                                      CHỌN NGƯỜI CẦN XEM
                                    </button>
                                    <div class="dropdown-menu">
                                      @foreach ($husband1 as $key=>$item)
                                    <a class="dropdown-item" href="/giapha/{{$item->id}}" style="width:250px;padding-left:20px">{{ $key+1}}. {{$item->name }}</a>
                                      @endforeach
                                    </div>
                                  </div>
                        </div>
                        <div class="tree">
    
                            <ul>
                           
                            <li class="tree-parent">
                                    <a href="#"  style="min-height:100px;">
                                            
                                    <p class="main-name">{{$husband[0]->name}}</p>
                            
                                    <p class="main-name">VỢ:{{$arrwife[0]->name}} kỵ:
                                       {{ date_format(date_create($arrwife[0]->dayavoided),'d').'-'.date_format(date_create($arrwife[0]->dayavoided),'m') }} 
                                   </p>                   
                                        
                                        <div class="listchildren">
                                                <hr>
                                                @foreach ($listchildren1 as $key=>$child)   
                                                <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                            @endforeach
        
                                        </div>
                                  
                                    </a>
                                    @if (sizeof($children1)>0)
                                    <ul>
                                        @php
                                            $i=-1;
                                        @endphp
                                        @foreach ($children1 as $child)
                                        @php
                                            $i++;
                                        @endphp
                                        
                                        <li>
                                                <a href="#" style="min-height:100px;">
                                            
                                                <p class="main-name"> {{$child->name}}</>
                                                @foreach ($arrwife2[$i] as $item)
                                                    
                                                <p class="main-name">VỢ:{{$item->name}} kỵ:{{ date_format(date_create($item->dayavoided),'d').'-'.date_format(date_create($item->dayavoided),'m') }} </>
                                        @endforeach
                                      
                                        <div class="listchildren">
                                                <hr>
                                                @foreach ($listchildren2[$i] as $key=>$child)   
                                                <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                            @endforeach
                                            </div> 
                                        
                    
                    
                                                    </a>
                                                    @if (sizeof($arr2[$i])>0)
                                                    <ul>
                                                            @php
                                                            $j=-1;
                                                        @endphp
                                                        @foreach ($arr2[$i] as $arrchild2)
                                                    
                                                        @php
                                                        $j++;
                                                    @endphp
                                                            <li>
                                                                    <a href="#">
                                                                
                                                                    <p class="main-name">{{$arrchild2->name}}</>
                                                                    @foreach ($arrwife3[$i][$j] as $item)
                                                    
                                                                            <p class="main-name">VỢ:{{$item->name}} kỵ:{{ date_format(date_create($item->dayavoided),'d').'-'.date_format(date_create($item->dayavoided),'m') }}</>
                                                                    @endforeach
                                                                            
                                                                            <div class="listchildren">
                                                                                    <hr>
                                                                                    @foreach ($listchildren3[$i][$j] as $key=>$child)   
                                                                                    <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                                                                @endforeach
                                                                            </div>
                                                                          
                                                                    </a>
                                                                    @if (sizeof($arr3[$i][$j])>0)
                                                                        <ul>
                                                                                @php
                                                                                $k=-1;
                                                                            @endphp
                                                                            @foreach ($arr3[$i][$j] as $arrchild3)
                                                                            @php
                                                                            $k++;
                                                                        @endphp
                                                                            <li>
                                                                                    <a href="#">
                                                                
                                                                                            <p class="main-name">{{$arrchild3->name}}</>
                                                                                            @foreach ($arrwife4[$i][$j][$k] as $item)
                                                    
                                                                                            <p class="main-name">VỢ:{{$item->name}} kỵ:{{ date_format(date_create($item->dayavoided),'d').'-'.date_format(date_create($item->dayavoided),'m') }}</>
                                                                                    @endforeach
                                                                                                  
                                                                                                    <div class="listchildren">
                                                                                                            <hr>
                                                                                                            @foreach ($listchildren4[$i][$j][$k] as $key=>$child)   
                                                                                                            <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                                                                                        @endforeach
                                                                                                    </div>
                                                                                                  
                                                                                            </a>
                                                                                            @if (sizeof($arr4[$i][$j][$k])>0)
                                                                                                
                                                                                            
                                                                                            <ul>
                                                                                                    @php
                                                                                                    $l=-1;
                                                                                                @endphp
                                                                                              @foreach ($arr4[$i][$j][$k] as $arrchild4)
                                                                                              @php
                                                                                              $l++;
                                                                                          @endphp
                                                                                            
                                                                                                <li>
                                                                                                    @if (sizeof($listchildren5[$i][$j][$k][$l])===0)
                                                                                                    <a href="#"  style="min-height:200px;">
                                                                
                                                                                                            <p class="main-name">{{$arrchild4->name}}</>
                                                                                                            @foreach ($arrwife5[$i][$j][$k][$l] as $item)
                                                
                                                                                                            <p class="main-name">VỢ:{{$item->name}} kỵ:{{ date_format(date_create($item->dayavoided),'d').'-'.date_format(date_create($item->dayavoided),'m') }}</>
                                                                                                    @endforeach
                                                                                                    <div class="listchildren">
                                                                                                            <hr>
                                                                                                            @foreach ($listchildren5[$i][$j][$k][$l]  as $key=>$child)   
                                                                                                        <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                                                                                    @endforeach
                                                                                                    </div> 
                                                                                                                
                                                                                                            </a>
                                                                                                    @else
                                                                                                    <a href="#">
                                                                
                                                                                                            <p class="main-name">{{$arrchild4->name}}</>
                                                                                                            @foreach ($arrwife5[$i][$j][$k][$l] as $item)
                                                
                                                                                                            <p class="main-name">VỢ:{{$item->name}} kỵ:{{ date_format(date_create($item->dayavoided),'d').'-'.date_format(date_create($item->dayavoided),'m') }}</>
                                                                                                    @endforeach
                                                                                                    <div class="listchildren">
                                                                                                            <hr>
                                                                                                            @foreach ($listchildren5[$i][$j][$k][$l]  as $key=>$child)   
                                                                                                        <p class="child-name">{{$key+1}}.{{$child->name}}</>
                                                                                                    @endforeach
                                                                                                    </div> 
                                                                                                                
                                                                                                            </a>
                                                                                                    @endif
                                                                                                      
                                                                                                               
                                                                                                </li>
                                                                                                @endforeach 
                                                                                            </ul>
                                                                                            @endif
                                                                            </li>
                                                                            @endforeach
                                                                        </ul>
                                                                        @endif
                                                            </li>    
                                                        @endforeach
                                                    </ul>
                                                    @endif
                                        </li>    
                                        @endforeach
                                        
                                    </ul>
                                    @endif
                                </li>
                                
                      
                                
                            </ul>
                          
                        </div>
                    </div>
    
    
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->

    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Archive Post Area Start ##### -->
   


@endsection
