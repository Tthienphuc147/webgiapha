<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{ asset('/public/img/1.png')}}" type="image/x-icon" />

   <title>Trang quản lý</title>


    <!-- Extra plugin css -->
    <link href="{{ asset('/public/css/admin/style.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('/public/css/bootstrap.min.css') }}">

</head>

<body>
 <!-- Preloader -->
 <div class="header">
    <a href="#" id="menu-action">
      <i class="fa fa-bars"></i>
      <span>Close</span>
    </a>
    <div class="logo">
      QUẢN LÝ TỘC NGUYỄN VĂN

    </div>
  </div>
  <div class="sidebar">
    <ul>
      <li><a href="/admin/quanlytintuc"><i class="fa fa-file-text"></i><span>
        Quản lý tin tức</span></a> </li>
      <li><a href="/admin/giapha"><i class="fa fa-users"></i><span>Quản lý gia phả</span></a></li>
      <li><a href="#"><i class="fa fa-user-secret"></i><span>Quản lý tài khoản</span></a></li>
      <li><a href="/logout"><i class="fa fa-sign-out"></i><span>Đăng xuất</span></a></li>
  </div>

  <!-- Content -->
  <div class="main">
    <div class="hipsum">

      @yield('content')
    </div>
  </div>













   {{-- <script>
       $('#menu-action').click(function() {
  $('.sidebar').toggleClass('active');
  $('.main').toggleClass('active');
  $(this).toggleClass('active');

  if ($('.sidebar').hasClass('active')) {
    $(this).find('i').addClass('fa-close');
    $(this).find('i').removeClass('fa-bars');
  } else {
    $(this).find('i').addClass('fa-bars');
    $(this).find('i').removeClass('fa-close');
  }
});

// Add hover feedback on menu
$('#menu-action').hover(function() {
    $('.sidebar').toggleClass('hovered');
});
   </script> --}}

</body>

</html>
