<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="{{ asset('/public/img/1.png')}}" type="image/x-icon" />
   <title>Tộc Nguyễn Văn</title>


    <!-- Extra plugin css -->
    <link href="{{ asset('/public/style.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/classy-nav.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/themify-icons.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/animate.css')}}" rel="stylesheet">
    <link href="{{ asset('/public/css/magnific-popup.css')}}" rel="stylesheet">

</head>

<body>
 <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>

    @include('layout.header')
    @yield('content')

    @include('layout.footer')











    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="{{ asset('/public/js/jquery/jquery-2.2.4.min.js ')}}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{{ asset('/public/js/bootstrap/popper.min.js')}}"></script>
    <!-- Rev slider js -->
    <script src="{{ asset('/public/js/bootstrap/bootstrap.min.js')}}"></script>
    <script src="{{ asset('/public/js/plugins/plugins.js ')}}"></script>
    <script src="{{ asset('/public/js/active.js ')}}"></script>

</body>

</html>
