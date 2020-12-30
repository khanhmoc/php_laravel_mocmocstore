<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\brand;
use Illuminate\Http\Request;

class brandcontroller extends Controller
{
    var $route = 'brand';
    var $pagename = 'Thương Hiệu';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list =
            $a = brand::where('status', '!=', '2')
            ->paginate(10);

        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.brand.list', $data);
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
            'action' => route('brand.store'),
            'method' => 'POST'
        ];
        return view('backend.brand.form', $data);
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
            'brand_name' => ['required', 'min:1', 'max:255'],
            'description' => ['required'],
            'status' => ['required'],
            'image_brand' => ['required']
        ], [
            'brand_name.required' => 'Tên không được trống',
            'brand_name.min' => 'Tên từ 1 tới 255 ký tự',
            'brand_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'image_brand.required' => 'Hình không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự',



        ]);
        $item = brand::create();
        $item->brand_name = $request->brand_name;
        $item->image_brand = $request->image_brand;
        $item->description = $request->description;
        $item->status = $request->status;
        $item->created_at = now();
        // $item->ngay_sua = now();
        if ($item->save()) {
            # code...
            return redirect()->route('brand.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('brand.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
        $item = brand::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('thuonghieu.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('brand.update', $id),
            'method' => 'PUT',
            'item' => $item


        ];
        return view('backend.brand.form', $data);
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
        $item = brand::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('brand.index')->with(['msg' => 'ko tim thay danh mục', 'status' => 'danger']);
        $request->validate([
            'brand_name' => ['required', 'min:1', 'max:255'],
            'description' => ['required'],
            'status' => ['required'],
            'image_brand' => ['required']
        ], [
            'brand_name.required' => 'Tên không được trống',
            'brand_name.min' => 'Tên từ 1 tới 255 ký tự',
            'brand_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'image_brand.required' => 'Hình không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự',



        ]);
        $item->brand_name = $request->brand_name;
        $item->image_brand = $request->image_brand;
        $item->description = $request->description;
        $item->status = $request->status;
        $item->updated_at = now();
        // $item->ngay_sua = now();
        if ($item->save()) {
            # code...
            return redirect()->route('brand.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('brand.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
