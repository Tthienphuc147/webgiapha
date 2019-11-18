@extends('master')

@section('content')

<section class="breadcrumb-area bg-img bg-overlay" style="background-image: url({{ asset('/public/img/breadcrumb.jpg)')}};">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content">
                        <h2>ĐĂNG NHẬP</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <div class="mag-login-area py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-6">
                    <div class="login-content bg-white p-30 box-shadow">
                        <!-- Section Title -->
                        <div class="section-heading">
                            <h5>TỘC NGUYỄN VĂN</h5>
                        </div>
                        {{-- <div
                            @if ($errors>0)
                            {{class="alert alert-danger text-center"}}
                        @endif>
                        @foreach ($errors->all() as $err)
                            <strong>{{$err}}</strong>
                        @endforeach
                        </div> --}}



                        <form action="/loginAuth" method="post">
                            @csrf

                            <div class="form-group">
                                <input type="text" name="username" class="form-control" id="exampleInputEmail1" placeholder="Tài khoản">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mật khẩu">
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">

                                </div>
                            </div>
                            <button type="submit" class="btn mag-btn mt-30">Đăng nhập</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
