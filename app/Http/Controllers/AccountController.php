<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AccountController extends Controller
{
    public function LoginAuth(Request $request){
        $username = $request->input('username');
        $pass=$request->input('password');
        $data=DB::table('account')->join('husband', 'account.id', '=', 'husband.id_account')
        ->where('username',$username)->select('username','role','name','password','husband.id as id_husband')->get();
        $this->validate($request,
            [
                'username' => 'required',
                'password' => 'required|min:1|max:32'
            ],
            [
                'username.required' => 'Bạn chưa nhập Địa chỉ username!',
                'password.required' => 'Bạn chưa nhập Mật khẩu!',
                'password.min' => 'Mật Khẩu gồm tối thiểu 6 ký tự!',
                'password.max' => 'Mật Khẩu gồm tối đa 32 ký tự!'
            ]);
                $success=false;

            foreach($data as $item) {
                if($pass == $item->password){
                    $request->session()->put('login', true);
                    $request->session()->put('id', $item->id_husband);
                    $request->session()->put('namelogin', $item->username);
                    $request->session()->put('name',$item->name);
                    $request->session()->put('role', $item->role);
                    //var_dump($data);
                     return redirect('/admin');
                    $success=true;
                    break;
                }

            }
            if($success===false){
                return redirect('/login');
            }
    }
    public function Logout(Request $request){
        $request->session()->flush();
        return redirect('/');
    }
}
