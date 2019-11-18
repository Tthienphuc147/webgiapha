@extends('admin.admin-master')
@section('content')
<div class="jumbotron">
    <h1 ><a href="/admin/quanlywife" style="color:black;text-decoration: none"> Quản lý người vợ</a>/ <a href=""  style="color:black;text-decoration: none">Sửa thông tin</a></h1>
 
    <div class="content">
      <div class="container">
        <form action="/admin/editwife" method="POST" enctype="multipart/form-data">
            @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="name">Họ và tên</label>
                    <input type="text" class="form-control" placeholder="{{$datawife->name}}" name="name">
                  <input type="text" class="form-control"  name="id_wife" value="{{$datawife->id}}" hidden="true">
                  </div>
                </div>
                <!--  col-md-6   -->
          
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="dayavoided">Ngày Kỵ</label>
                        <input type="date" class="form-control" placeholder="{{$datawife->dayavoided}}" name="dayavoided">
                      </div>
                </div>
                <!--  col-md-6   -->
              </div>
              <div class="row">
                  <div class="col-md-12">
          
                      <div class="form-group">
                        <label for="nhánh">Chồng</label>
                        <select name="husband" class="form-control" name="husband">
                          <option value="{{$datahusband->id}}">{{$datahusband->name}}</option>
                          
                        </select>
                      </div>
                    </div>
              </div>
          
          
           
              <!--  row   -->
              <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="note">Mô tả</label>
                      <textarea name="note" placeholder="{{$datawife->note}}" id="note" cols="20" rows="3" class="form-control"></textarea>
                    </div>
            
            
                  </div>

                </div>
          
          
              <!--  row   -->
          
  {{--         
              <label for="contact-preference">When is the best time of day to reach you?</label>
              <div class="radio">
                <label>
                  <input type="radio" name="contact-preference" id="contact-preference" value="am" checked>Morning
                </label>
              </div>
              <div class="radio">
                <label>
                  <input type="radio" name="contact-preference" id="contact-preference" value="pm" checked>Evening
                </label>
              </div>
          
              <label for="newsletter">Would you like to recieve our email newsletter?</label>
              <div class="checkbox">
          
                <label>
                  <input type="checkbox" value="Sure!" id="newsletter"> Sure!
                </label>
              </div> --}}
          
          
              <button type="submit" class="btn btn-danger">Sửa</button>
            </form>
          </div>  
        
          
    </div>
</div>


@endsection