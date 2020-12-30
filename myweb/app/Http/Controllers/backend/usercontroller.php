<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class usercontroller extends Controller
{
    //
    var $route = 'user';
    var $pagename = 'User';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        $list = users::where('status', '!=', '2')
            ->paginate(10);
        // dd($list);
        // ->get();
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.user.list', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'method' => 'POST',
            // 'title' => 'Thêm mới',
            'action' => route('category.store')
        ];
        return view('backend.user.form', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        // dd($request->all());
        $request->validate([
            'full_name' => ['required'],
            'username' => ['required'],
            'image_use' => 'required',
            'password' => ['required'],
            'status' => ['required']

        ], [
            'name.required' => 'Tên người dùng ko đc trống',
            'username.required' => 'User name ko đc trống',
            'image.required' => 'Hình ko đc trống',
            'password.required' => 'Password ko đc trống',
            'status.required' => 'trạng thái ko đc trống',
        ]);
        $item = users::create();
        $item->full_name = $request->full_name;
        $item->username = $request->username;
        $item->image_use = $request->image_use;
        $item->password = $request->password;
        $item->status = $request->status;
        $item->created_at = now();
        // $item->ngay_cap_nhat = now();

        // Project::create($request->all());\
        if ($item->save()) {
            return redirect()->route('user.create')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('user.create')->with(['msg' => 'Them Thất bại', 'status' => 'success']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = users::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('user.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('user.update', $id),
            'method' => 'PUT',
            'item' => $item


        ];
        return view('backend.user.form', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $item = users::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('user.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $request->validate([
            'full_name' => ['required'],
            'username' => ['required'],
            'image_use' => 'required',
            'password' => ['required'],
            'status' => ['required']

        ], [
            'name.required' => 'Tên người dùng ko đc trống',
            'username.required' => 'User name ko đc trống',
            'image.required' => 'Hình ko đc trống',
            'password.required' => 'Password ko đc trống',
            'status.required' => 'trạng thái ko đc trống',
        ]);
        $item->full_name = $request->full_name;
        $item->username = $request->username;
        $item->image_use = $request->image_use;
        $item->password = $request->password;
        $item->status = $request->status;
        $item->updated_at = now();
        if ($item->update()) {
            return redirect()->route('user.index')->with(['msg' => 'Sửa Thành Công', 'status' => 'success']);
        } else {
            return redirect()->route('user.index')->with(['msg' => 'Sửa Thất Bại', 'status' => 'success']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $item = users::where('id', $id)->update();
        $item->status = 2;
        if ($item->save()) {
            return redirect()->route('user.index')->with(['msg' => 'Sửa Thành Công', 'status' => 'success']);
        } else {
            return redirect()->route('user.index')->with(['msg' => 'Sửa Thất Bại', 'status' => 'success']);
        }
    }

    public function login()
    {
        return view('backend.user.login');
    }
    public function loginpost(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'username' => ['required', 'min:5', 'max:20', 'exists:users,username'],
            'password' => ['required', 'min:6', 'max:30']
        ], [
            'username.required' => 'Tên đăng nhập không được trống',
            'username.min' => 'Tên đăng nhập từ 5 tới 20 ký tự',
            'username.exists' =>  'Tên đăng nhập không đúng',
            'username.max' =>  'Tên đăng nhập từ 5 tới 20 ký tự',
            'password.max' =>  'Mật khẩu từ 6 tới 30 ký tự',
            'password.required' => 'Mật khẩu không được trống',
            'password.min' => 'Mật khẩu từ 6 tới 30 ký tự',
        ]);
        if (!$request->remember) {
            if (Auth::guard('backend')->attempt([
                'username' => $request->username,
                'password' => $request->password
            ])) {
                //ong nay da dang nhap
                if (Auth::guard('backend')->user()->status == 1)
                    return redirect()->route('b.dashboard')->with(['msg' => 'Đăng nhập thành công', 'status' => 'success']);
                else {
                    Auth::guard('backend')->logout();
                    return redirect()->route('b.login')->with(['msg' => 'Tài khoản này đang bị khoá bởi BQT', 'status' => 'danger']);
                }
            } else {
                return redirect()->route('b.login')->with(['msg' => 'Thông tin đăng nhập không đúng', 'status' => 'danger']);
            }
        } else {
            if (Auth::guard('backend')->attempt([
                'username' => $request->username,
                'password' => $request->password,

            ], $request->remember)) {
                //ong nay da dang nhap
                if (Auth::guard('backend')->user()->status == 1)
                    return redirect()->route('b.dashboard')->with(['msg' => 'Đăng nhập thành công', 'status' => 'success']);
                else {
                    Auth::guard('backend')->logout();
                    return redirect()->route('b.login')->with(['msg' => 'Tài khoản này đang bị khoá bởi BQT', 'status' => 'danger']);
                }
            } else {
                return redirect()->route('b.login')->with(['msg' => 'Thông tin đăng nhập không đúng', 'status' => 'danger']);
            }
        }
    }
    public function logout()
    {
        Auth::guard('backend')->logout();
        return redirect()->route('b.login')->with(['msg' => 'Bạn vừa thoát khỏi hệ thống', 'status' => 'warning']);
    }
    public function testpass(Request $request)
    {
        echo Hash::make($request->p);
        echo '<br>';
        echo md5($request->p);
    }
}
