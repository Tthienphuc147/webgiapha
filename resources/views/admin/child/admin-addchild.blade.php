@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 ><a href="/admin/quanlychild" style="color:black;text-decoration: none"> Quản lý con</a>/ <a href=""  style="color:black;text-decoration: none">Thêm mới</a></h1>
 
    <div class="content">
      <div class="container">
          <form>
           
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="name">Họ và tên</label>
                    <input type="text" class="form-control" placeholder="họ và tên" id="name">
                  </div>
                </div>
                <!--  col-md-6   -->
          
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="bố">Bố</label>
                        <select name="" class="form-control" id="bố">
                          <option value="">NGUYỄN VĂN HƯNG</option>
                          <option value="">NGUYỄN VĂN TỘC</option>
                        </select>
                      </div>
                </div>
                <!--  col-md-6   -->
              </div>
          
          
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="id_user_information">Thông tin</label>
                    <input type="text" class="form-control" placeholder="Thông tin" id="id_user_information">
                  </div>
          
          
                </div>
                <!--  col-md-6   -->
          
                <div class="col-md-6">
          
                  <div class="form-group">
                        
              <label for="sex">Giới tính</label>
              <div class="radio">
                <label>
                  <input type="radio" name="" id="sex" value="" >Nam
                </label>
              </div>
              <div class="radio">
                <label>
                  <input type="radio" name="" id="sex" value="" >Nữ
                </label>
              </div>
                  </div>
                </div>
                <!--  col-md-6   -->
              </div>
              <!--  row   -->
           
          
             
              <!--  row   -->
          
 
          
              <button type="submit" class="btn btn-danger">Thêm mới</button>
            </form>
          </div>  
        
          
    </div>
</div>


@endsection