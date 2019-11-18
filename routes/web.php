<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@showHome');
Route::get('/category', 'noidungcontroller@showcategory');
Route::get('/post', 'HomeController@showSinglePost');
Route::get('/login', 'HomeController@showLogin');
Route::get('/giapha/{id}', 'GiaPhaController@showGiaPha');
route::get('/noidung/{id}','noidungcontroller@shownoidung');
route::post('/loginAuth','AccountController@LoginAuth');
route::get('/logout','AccountController@Logout');
/*Admin*/
Route::get('/admin','AdminHomeController@showHome');
Route::get('/admin/giapha','AdminQuanLyGiaPhaController@show');
/*Tintuc*/
Route::get('/admin/quanlytintuc','AdminTinTucController@showDanhSach');
route::get('/admin/quanlytintuc/xoa/978623523742{id}78263472354761', 'AdminTinTucController@deleteNews');
route::get('/admin/quanlytintuc/showEdit/978623523742{id}78263472354761', 'AdminTinTucController@showEditNews');
route::post('/admin/quanlytintuc/add', 'AdminTinTucController@insertNews');
route::post('/admin/quanlytintuc/edit', 'AdminTinTucController@editNews');
route::get('/admin/quanlytintuc/showAdd', 'AdminTinTucController@showAddNews');
/*branch*/
Route::get('/admin/quanlybranch','AdminBranchController@showDanhSach');
Route::get('/admin/showaddbranch','AdminBranchController@showAddBranch');
Route::get('/admin/showeditbranch','AdminBranchController@showEditBranch');
/*husband*/
Route::get('/admin/quanlyhusband','AdminHusbandController@showDanhSach');
Route::get('/admin/showaddhusband','AdminHusbandController@showAddHusband');
Route::get('/admin/showedithusband','AdminHusbandController@showEditHusband');
/*wife*/
Route::get('/admin/quanlywife/','AdminWifeController@showDanhSach');
Route::get('/admin/showaddwife','AdminWifeController@showAddWife');
Route::get('/admin/showeditwife/{id}','AdminWifeController@showEditWife');
/*children*/
Route::get('/admin/quanlychild','AdminChildController@showDanhSach');
Route::get('/admin/showaddchild','AdminChildController@showAddChild');
Route::get('/admin/showeditchild','AdminChildController@showEditChild');
