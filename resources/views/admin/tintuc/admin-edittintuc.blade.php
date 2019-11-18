@extends('admin.admin-master')
<script src="../../../public/ckeditor/ckeditor.js"></script>
@section('content')
<div class="jumbotron">
    <h1 ><a href="/admin/quanlytintuc" style="color:black;text-decoration: none"> Quản lý tin tức</a>/ <a href=""  style="color:black;text-decoration: none">Sửa</a></h1>

    <div class="content">
      <div class="container">
          <form action="/admin/quanlytintuc/edit" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row" hidden="true">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="id">id</label>
                    <input type="text" class="form-control" placeholder="id" id="id" name="id" value={{$dtdata[0]["id"]}} >
                  </div>
                </div>

              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="tieude">Tiêu đề</label>
                    <input type="text" class="form-control" placeholder="{{$dtdata[0]["tieude"]}}" id="tieude" name="tieude">
                  </div>
                </div>

              </div>


              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="anhgioithieu">Ảnh giới thiệu</label>
                    <input type="file" name="anhgioithieu" id="anhgioithieu">
                    <br>
                    <img src={{"/public/img/".$dtdata[0]["anhgioithieu"]}} alt="" width="300px" height="200px">
                  </div>


                </div>
                <!--  col-md-6   -->

                <!--  col-md-6   -->
              </div>
              <!--  row   -->
              <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="tomtat">Tóm tắt</label>
                      <textarea name="tomtat" placeholder="{{$dtdata[0]["tomtat"]}}" id="tomtat" cols="20" rows="3" class="form-control"></textarea>
                    </div>


                  </div>

                </div>



                <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="noidung">Nội dung</label>
                        <textarea name="noidung" placeholder="" id="noidung" cols="20" rows="3" class="form-control">
                            {{$dtdata[0]["noidung"]}}
                        </textarea>
                        <script>
                            CKEDITOR.replace('noidung', {
                                language: 'vi',
                                filebrowserBrowseUrl: '../../public/ckfinder/ckfinder.html',
                                filebrowserImageBrowseUrl: '../../public/ckfinder/ckfinder.html?type=Images',
                                filebrowserFlashBrowseUrl: '../../public/ckfinder/ckfinder.html?type=Flash',
                                filebrowserUploadUrl: '../../public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                                filebrowserImageUploadUrl: '../../public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                                filebrowserFlashUploadUrl: '../../public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
                            });
                            </script>
                      </div>


                    </div>

                  </div>


              <button type="submit" class="btn btn-danger">Sửa</button>
            </form>
          </div>


    </div>
</div>


@endsection
