@extends('master')

@section('content')

 @include('layout.slider')
    <!-- ##### Mag Posts Area Start ##### -->
    <section class="mag-posts-area d-flex flex-wrap">

        <!-- >>>>>>>>>>>>>>>>>>>>
         Post Left Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
        <div class="post-sidebar-area left-sidebar mt-30 mb-30 bg-white box-shadow">
            <!-- Sidebar Widget -->
            <div class="single-sidebar-widget p-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Thông báo</h5>
                </div>

                <div class="single-blog-post d-flex">
                    <div class="post-thumbnail">
                        <img src="{{ asset('/public/img/tb.png')}}" alt="">
                    </div>
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Thông báo ngày giỗ ông A</a>
                    </div>
                </div>
                <div class="single-blog-post d-flex">
                    <div class="post-thumbnail">
                        <img src="{{ asset('/public/img/tb.png')}}" alt="">
                    </div>
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Thông báo ngày giỗ ông A</a>
                    </div>
                </div>
                <div class="single-blog-post d-flex">
                    <div class="post-thumbnail">
                        <img src="{{ asset('/public/img/tb.png')}}" alt="">
                    </div>
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Thông báo ngày giỗ ông A</a>
                    </div>
                </div>
                <div class="single-blog-post d-flex">
                    <div class="post-thumbnail">
                        <img src="{{ asset('/public/img/tb.png')}}" alt="">
                    </div>
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Thông báo ngày giỗ ông A</a>
                    </div>
                </div>
                <div class="single-blog-post d-flex">
                    <div class="post-thumbnail">
                        <img src="{{ asset('/public/img/tb.png')}}" alt="">
                    </div>
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Thông báo ngày giỗ ông A</a>
                    </div>
                </div>
            </div>


        </div>

        <!-- >>>>>>>>>>>>>>>>>>>>
             Main Posts Area
        <<<<<<<<<<<<<<<<<<<<< -->
        <div class="mag-posts-content mt-30 mb-30 p-30 box-shadow">
            <!-- Trending Now Posts Area -->


            <!-- Feature Video Posts Area -->
            <div class="feature-video-posts mb-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>TIN TỨC HOẠT ĐỘNG</h5>
                </div>

                <div class="featured-video-posts">
                    <div class="row">
                        <div class="col-12 col-lg-7">
                            <!-- Single Featured Post -->
                            <div class="single-featured-post">
                                <!-- Thumbnail -->
                                <div class="post-thumbnail mb-50" ">
                                    <a href="/post "> <img src="{{ asset('/public/img/news1.jpg')}} " alt=" " width="650px "></a>


                                </div>
                                <!-- Post Contetnt -->
                                <div class="post-content ">
                                    <div class="post-meta ">
                                        <a href="# ">18 THÁNG 10, 2019</a>
                                    </div>
                                    <a href="/post " class="post-title ">Chủ tịch Hội đồng họ Trương Việt Nam Trương Văn Đoan người giương cao ngọn cờ đoàn kết, kết nối dòng tộc</a>
                                    <p>Chủ tịch Hội đồng họ Trương Việt Nam Trương Văn Đoan nguyên là lãnh đạo cao cấp của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>
                                </div>
                                <!-- Post Share Area -->

                            </div>
                        </div>

                        <div class="col-12 col-lg-5 ">
                            <!-- Featured Video Posts Slide -->
                            <div class="featured-video-posts-slide owl-carousel ">

                                <div class="single--slide ">
                                    <!-- Single Blog Post -->
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}} " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                    <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>


                                </div>
                                 <div class="single--slide ">
                                    <!-- Single Blog Post -->
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}} " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                    <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>
                                     <div class="single-blog-post d-flex style-3 ">
                                        <div class="post-thumbnail ">
                                            <img src="{{ asset('/public/img/news2.jpg')}}  " alt=" ">
                                        </div>
                                        <div class="post-content ">
                                            <a href="single-post.html " class="post-title ">Hội đồng họ Trương Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Trương Văn Được</a>

                                        </div>
                                    </div>


                                </div>




                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="trending-now-posts mb-30 ">
                <!-- Section Title -->
                <div class="section-heading ">
                    <h5>ẢNH HOẠT ĐỘNG</h5>
                </div>

                <div class="trending-post-slides owl-carousel ">
                    <!-- Single Trending Post -->
                    <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/1.jpg ')}} " alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>
                     <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/2.jpg ')}}" alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>
                     <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/3.jpg ')}}" alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>
                     <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/4.JPG ')}} " alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>
                     <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/5.jpg ')}}" alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>
                     <div class="single-trending-post ">
                        <img src="{{ asset('/public/img/gallary/6.jpg ')}} " alt=" ">
                        <div class="post-content ">

                            <a href=" " class="post-title "></a>
                        </div>
                    </div>


                </div>
            </div>

        </div>

        <!-- >>>>>>>>>>>>>>>>>>>>
         Post Right Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->

    </section>
    <!-- ##### Mag Posts Area End ##### -->
 <!--================Main Slider Area =================-->


@endsection
