@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 >Quản lý tin tức</h1>

    <div  class="addBtn" @if (request()->session()->get('role')=="user")
        hidden="true"
    @endif>
        <a href="/admin/quanlytintuc/showAdd"><i class="fa fa-plus"  style="padding: 5px;color:#fff"></i><span style="color:#fff">Thêm bài viết</span></a>
</div>
    <div class="content">
        <table class="table table-bordered">
            <thead>
              <tr>
                <th>#</th>
                <th>Tiêu đề</th>
                <th>Tóm tắt</th>
                <th>Ảnh giới thiệu</th>
                <th>Quản lý</th>

              </tr>
            </thead>
            <tbody>
              @foreach ($tintuc as $item)
              <tr >
                  <th scope="row">{{$item->id}}</th>
                  <td>{{$item->tieude}}</td>
                  <td style="width:500px">{{$item->tomtat}}</td>
                  <td><img src={{"/public/img/".$item->anhgioithieu}} alt="" width="200px"></td>
                  <td>
                    <div style="display:flex;flex-direction:column">

                       <div style="display:flex;align-items: center;padding:5px" @if (request()->session()->get('role')=="user")
                            hidden="true"
                        @endif><a href="/admin/quanlytintuc/showEdit/978623523742{{$item->id}}78263472354761"><i class="fa fa-edit" style="padding: 5px"></i><span>Sửa bài viết</span></a> </div>
                       <div style="display:flex;align-items: center;padding:5px" @if (request()->session()->get('role')=="user")
                            hidden="true"
                        @endif><a href="/admin/quanlytintuc/xoa/978623523742{{$item->id}}78263472354761"> <i class="fa fa-trash" style="padding: 5px"></i><span>Xóa bài viết</span></a></div>
                    </div>

                  </td>
                </tr>
              @endforeach


            </tbody>
          </table>
    </div>
</div>


@endsection
