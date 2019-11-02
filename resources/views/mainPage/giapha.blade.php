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
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->

    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Archive Post Area Start ##### -->
    <div class="archive-post-area ">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-xl-12">
                    <div class="logo p-30">
                        <img src="{{ asset('/public/img/1.png')}}" alt="">
                    </div>
                    <div class="tree">

                        <ul>
                        @foreach ($branch as $item)
                        <li class="tree-parent">
                                <a href="#">
                                        
                                    <h6>TRƯƠNG VĂN HUỆ kỵ:27-6</h6>
                                    <h6>VỢ:TRƯƠNG THỊ NIÊN kỵ:28-11</h6>


                                    <hr>


                                </a>
                                <ul>

                                </ul>
                            </li>
                            
                        @endforeach 
                            
                        </ul>
                    </div>
                </div>


            </div>
        </div>
    </div>


@endsection
