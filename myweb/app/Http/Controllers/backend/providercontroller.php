<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\provider;
use Illuminate\Http\Request;

class providercontroller extends Controller
{
    var $route = 'provider';
    var $pagename = 'Nhà cung cấp';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list =
            $a = provider::where('status', '!=', '2')
            ->paginate(10);

        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.provider.list', $data);
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
            'action' => route('provider.store'),
            'method' => 'POST'
        ];
        return view('backend.provider.form', $data);
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
        $request->validate([
            'provider_name' => ['required', 'min:1', 'max:255'],
            'description' => ['required'],
            'status' => ['required'],
            'image_provider' => ['required'],
            'address' => ['required'],
            'phone_number' => ['required'],
            'email' => ['required']
        ], [
            'provider_name.required' => 'Tên không được trống',
            'provider_name.min' => 'Tên từ 1 tới 255 ký tự',
            'provider_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'image_provider.required' => 'Hình không được trống',
            'chi_tiet.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự',
            'address.required' => 'Địa chỉ không được rỗng',
            'phone_number.required' => 'SĐT không được rỗng',
            'email.required' => 'Email ko đc rỗng'



        ]);
        $item = provider::create();
        $item->provider_name = $request->provider_name;
        $item->image_provider = $request->image_provider;
        $item->description = $request->description;
        $item->status = $request->status;
        $item->address = $request->address;
        $item->phone_number = $request->phone_number;
        $item->email = $request->email;
        $item->created_at = now();
        // $item->ngay_sua = now();
        if ($item->save()) {
            # code...
            return redirect()->route('provider.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('provider.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
        //
        $item = provider::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('provider.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('provider.update', $id),
            'method' => 'PUT',
            'item' => $item


        ];
        return view('backend.provider.form', $data);
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
        $item = provider::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('danhmuc.index')->with(['msg' => 'ko tim thay danh mục', 'status' => 'danger']);
        $request->validate([
            'provider_name' => ['required', 'min:1', 'max:255'],
            'description' => ['required'],
            'status' => ['required'],
            'image_provider' => ['required'],
            'address' => ['required'],
            'phone_number' => ['required'],
            'email' => ['required']
        ], [
            'provider_name.required' => 'Tên không được trống',
            'provider_name.min' => 'Tên từ 1 tới 255 ký tự',
            'provider_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'image_provider.required' => 'Hình không được trống',
            'chi_tiet.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự',
            'address.required' => 'Địa chỉ không được rỗng',
            'phone_number.required' => 'SĐT không được rỗng',
            'email.required' => 'Email ko đc rỗng'



        ]);
        $item->provider_name = $request->provider_name;
        $item->image_provider = $request->image_provider;
        $item->description = $request->description;
        $item->status = $request->status;
        $item->address = $request->address;
        $item->phone_number = $request->phone_number;
        $item->email = $request->email;
        $item->updated_at = now();
        if ($item->save()) {
            # code...
            return redirect()->route('provider.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('provider.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
        
    }
}
