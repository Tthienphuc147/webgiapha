@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 >Quản lý con</h1>
    <div  class="addBtn"> <a href="/admin/showaddchild"><i class="fa fa-plus"  style="padding: 5px;color:#fff"></i><span style="color:#fff">Thêm mới</span></a></div>
    <div class="content">
        <table class="table table-bordered">
            <thead>
              <tr>
                <th>#</th>
                <th>Họ và tên</th>
                <th>Bố</th>
                <th>Thông tin</th>
                <th>Giới tính</th>
                <th>Mô tả</th>
                <th>Quản lý</th>
              </tr>
            </thead>
            <tbody>
        
                <tr >
                    <th scope="row"></th>
                    <td></td>
                    <td ></td>
                    <td></td>
                    <td></td>
                    <td ></td>
                    <td>
                      <div style="display:flex;flex-direction:column">
  
                        
                        
                    <div style="display:flex;align-items: center;padding:5px"><a href="/admin/showeditchild" style="color:black;text-decoration: none;"><i class="fa fa-edit" style="padding: 5px"></i><span>Sửa thông tin</span></a></div>
                    <div style="display:flex;align-items: center;padding:5px"> <i class="fa fa-trash" style="padding: 5px"></i><span>Xóa </span></div>
                  </div>
                     
                    </td>
                  </tr>

             
             
            </tbody>
          </table>
    </div>
</div>


@endsection