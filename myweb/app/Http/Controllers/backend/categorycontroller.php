<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\category;
use App\Models\CategoryTranslation;
use Illuminate\Http\Request;

class categorycontroller extends Controller
{
    var $route = 'category';
    var $pagename = 'Danh mục';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list =
            $a = category::where('status', '!=', '2')
            ->paginate(10);

        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.category.list', $data);
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
            'action' => route('category.store'),
            'method' => 'POST'
        ];
        return view('backend.category.form', $data);
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
            'category_name' => ['required', 'min:1', 'max:255'],
            'parent_id' => ['required', 'min:0', 'numeric'],
            'description' => ['required'],
            'status' => ['required'],
            'image_category' => ['required']
        ], [
            'category_name.required' => 'Tên không được trống',
            'category_name.min' => 'Tên từ 1 tới 255 ký tự',
            'category_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'parent_id.required' => 'mã cha ko đc rỗng',
            'parent_id.numeric' => 'Mã cha không hợp lệ',
            'parent_id.min' => 'Mã cha không được âm',
            'image_category.required' => 'Hình không được trống',
            'chi_tiet.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự'



        ]);
        $item = category::create();
        // $item->category_name = $request->category_name;
        $item->parent_id = $request->parent_id;
        $item->image_category = $request->image_category;
        // $item->description = $request->description;
        $item->status = $request->status;
        $item->created_at = now();
        $item->save();
        CategoryTranslation::insert([
            'category_id' => $item->id,
            'locale' => \App::getLocale(),
            'category_name' => $request->product_name,
            'description' => $request->description,
        ]);
        // $item->ngay_sua = now();
        if ($item->save()) {
            # code...
            return redirect()->route('category.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('category.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
        $item = category::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('category.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('category.update', $id),
            'method' => 'PUT',
            'item' => $item


        ];
        return view('backend.category.form', $data);
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
        $item = category::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('danhmuc.index')->with(['msg' => 'ko tim thay danh mục', 'status' => 'danger']);
        $request->validate([
            'category_name' => ['required', 'min:1', 'max:255'],
            'parent_id' => ['required', 'min:0', 'numeric'],
            'description' => ['required'],
            'status' => ['required'],
            'image_category' => ['required']
        ], [
            'category_name.required' => 'Tên không được trống',
            'category_name.min' => 'Tên từ 1 tới 255 ký tự',
            'category_name.max' =>  'Tên từ 1 tới 255 ký tự',
            'parent_id.required' => 'mã cha ko đc rỗng',
            'parent_id.numeric' => 'Mã cha không hợp lệ',
            'parent_id.min' => 'Mã cha không được âm',
            'image_category.required' => 'Hình không được trống',
            'chi_tiet.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'description.required' => 'Mô tả không được trống',
            'description.min' => 'Mô tả từ 1 tới 255 ký tự',
            'description.max' =>  'Mô tả từ 1 tới 255 ký tự'



        ]);
        // $item = danhmuc::update();
        // $item->category_name = $request->category_name;
        $item->parent_id = $request->parent_id;
        $item->image_category = $request->image_category;
        // $item->description = $request->description;
        $item->status = $request->status;
        // $item->ngay_tao = now();
        $item->updated_at = now();
        CategoryTranslation::where('category_id', $id)->where('locale', \App::getLocale())->update([

            'category_name' => $request->product_name,
            'description' => $request->description,
        ]);
        if ($item->save()) {
            # code...
            return redirect()->route('category.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('category.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
