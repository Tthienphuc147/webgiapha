@extends('master')

@section('content')
<section class="breadcrumb-area bg-img bg-overlay" style="background-image: url({{ asset('/public/img/breadcrumb.jpg')}});">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="breadcrumb-content">
                    <h2>TIN TỨC</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ##### Breadcrumb Area End ##### -->

<!-- ##### Breadcrumb Area Start ##### -->

<!-- ##### Breadcrumb Area End ##### -->

<!-- ##### Archive Post Area Start ##### -->
<div class="archive-post-area " style="padding-top: 50px;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-xl-12">
                <div class="archive-posts-area bg-white p-30 mb-30 box-shadow">

                    <!-- Single Catagory Post -->
                    @foreach ($data as $item)
                    <div class="single-catagory-post d-flex flex-wrap">
                        <!-- Thumbnail -->
                        <div class="post-thumbnail bg-img" style="background-image: url({{$item->anhgioithieu}});">

                        </div>

                        <!-- Post Contetnt -->
                        <div class="post-content">
                            {{-- <div class="post-meta">
                                <a href="#">18 THÁNG 10, 2019</a>
                            </div> --}}
                        <a href="/noidung/{{$item->id}}" class="post-title">{{$item->tieude}}</a>
                            <!-- Post Meta -->

                            <p>{{$item->tomtat}}</p>
                        </div>
                    </div>
                    @endforeach
                   
           
                    


                    <!-- Pagination -->


                </div>
            </div>


        </div>
    </div>
</div>
@endsection
