@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 >Quản lý người vợ</h1>
    <div  class="addBtn"> <a href="/admin/showaddwife"><i class="fa fa-plus"  style="padding: 5px;color:#fff"></i><span style="color:#fff">Thêm mới</span></a></div>
    <div class="content">
        <table class="table table-bordered">
            <thead>
              <tr>
                <th>#</th>
                <th>Họ và tên</th>
                <th>Ngày kỵ</th>
                <th>Mô tả</th>
                <th>ID Chồng</th>
                <th>Quản lý</th>
              </tr>
            </thead>
            <tbody>
            @foreach ($datawife as $key=>$item)
                <tr >
                    <th scope="row">{{$key+1}}</th>
                    <td >{{$item->name}}</td>
                    <td>{{$item->dayavoided}}</td>
                    <td>{{$item->note}}</td>
                    <td>{{$item->id_user}}</td>
                    <td>
                      <div style="display:flex;flex-direction:column">
  
                         <div style="display:flex;align-items: center;padding:5px"><a href="/admin/showeditwife/{{$item->id}}" style="color:black;text-decoration: none;"><i class="fa fa-edit" style="padding: 5px"></i><span>Sửa thông tin</span></a></div>
                         <div style="display:flex;align-items: center;padding:5px"> <i class="fa fa-trash" style="padding: 5px"></i><span>Xóa </span></div>
                        </div>
                     
                    </td>
                  </tr>
              @endforeach
              
             
            </tbody>
            
          </table>
          <?php echo $datawife->links(); ?>
    </div>
</div>


@endsection