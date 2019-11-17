@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 ><a href="/admin/quanlybrand" style="color:black;text-decoration: none"> Quản lý nhánh</a>/ <a href=""  style="color:black;text-decoration: none">Thêm mới</a></h1>
 
    <div class="content">
      <div class="container">
          <form>
           
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="sect">Phái</label>
                    <input type="text" class="form-control" placeholder="phái" id="sect">
                  </div>
                </div>
                <!--  col-md-6   -->
          
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="branch">Chi</label>
                    <input type="text" class="form-control" placeholder="Chi" id="branch">
                  </div>
                </div>  <div class="col-md-4">
                    <div class="form-group">
                      <label for="life">Đời</label>
                      <input type="text" class="form-control" placeholder="đời" id="life">
                    </div>
            
                <!--  col-md-6   -->
              </div>
          
          
          
              <button type="submit" class="btn btn-danger">Thêm mới</button>
            </form>
          </div>  
        
          
    </div>
</div>


@endsection