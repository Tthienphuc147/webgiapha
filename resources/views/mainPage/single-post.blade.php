@extends('master')

@section('content')

  <section class="breadcrumb-area bg-img bg-overlay" style="background-image: url({{ asset('/public/img/breadcrumb.jpg')}});">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                        @foreach ($data as $item)
                        <div class="breadcrumb-content">
                        <h2>{{$item->tieude}}</h2>
                            </div>
                        @endforeach
                 
                </div>
            </div>
        </div>
    </section>
    <section class="post-details-area">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-xl-8">
                    @foreach ($data as $item)
                    <div class="post-details-content bg-white mb-30 p-30 box-shadow">
                            <div class="blog-thumb mb-30">
                                <img src={{$item->anhgioithieu}} alt="" width="100%">
                            </div>
                            <div class="blog-content">
                                <div class="post-meta">
                             
    
                                </div>
                                <h3 class="post-title">{{$item->tieude}}</h3>
                                <!-- Post Meta -->
                                <div id="contentDetail">
                                        <p>{!! $item->noidung !!}</p>
                                </div>
    
                            </div>
                        </div>
                    @endforeach
                    


                </div>

                <!-- Sidebar Widget -->
                <div class="col-12 col-md-6 col-lg-5 col-xl-4">
                    <div class="sidebar-area bg-white mb-30 box-shadow">


                        <!-- Sidebar Widget -->
                        <div class="single-sidebar-widget p-30">
                            <!-- Section Title -->
                            <div class="section-heading">
                                <h5>TIN TỨC LIÊN QUAN</h5>
                            </div>

                            <!-- Single YouTube Channel -->
                            @foreach ($datalq as $item)
                            <div class="single-youtube-channel d-flex">
                                    <div class="youtube-channel-thumbnail">
                                        <img src={{$item->anhgioithieu}} alt="" height="80px">
                                    </div>
                                    <div class="youtube-channel-content">
                                        <a href="/noidung/{{$item->id}}" class="channel-title">{{$item->tieude}}</a>
                                        <a href="/noidung/{{$item->id}}" class="btn subscribe-btn">CHI TIẾT</a>
                                    </div>
                                </div>
                            @endforeach
                            
                           


                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
