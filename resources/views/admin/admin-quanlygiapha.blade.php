@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 >Quản lý gia pha</h1>
    <div class="row pl-5">
        <div  class="addBtn1"><a href="/admin/quanlybranch"><span style="color:#fff">Quản lý nhánh</span></a></div>
      <div  class="addBtn1"><a href="/admin/quanlyhusband"><span style="color:#fff">Quản lý người chồng</span></a></div>
      <div  class="addBtn1"><a href="/admin/quanlywife"><span style="color:#fff">Quản lý người vợ</span></a></div>
      <div  class="addBtn1"><a href="/admin/quanlychild"><span style="color:#fff">Quản lý người con</span></a></div>
    </div>
</div>


@endsection