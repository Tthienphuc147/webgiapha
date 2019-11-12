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

/*Admin*/
Route::get('/admin','AdminHomeController@showHome');
Route::get('/admin/quanlytintuc','AdminTinTucController@showDanhSach');
