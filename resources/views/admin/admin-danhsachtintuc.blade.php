@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 >Quản lý tin tức</h1>
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
                  <td><img src={{$item->anhgioithieu}} alt="" width="200px"></td>
                  <td>
                    <div style="display:flex;flex-direction:column">
                       <div style="display:flex;align-items: center;padding:5px"> <i class="fa fa-plus" style="padding: 5px"></i><span>Thêm bài viết</span></div>
                       <div style="display:flex;align-items: center;padding:5px"> <i class="fa fa-edit" style="padding: 5px"></i><span>Sửa bài viết</span></div>
                    </div>
                   
                  </td>
                </tr>
              @endforeach
             
             
            </tbody>
          </table>
    </div>
</div>


@endsection