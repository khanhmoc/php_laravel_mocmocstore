<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\brand;
use App\Models\category;
use App\Models\product;
use App\Models\ProductTranslation;
use App\Models\provider;
use Illuminate\Http\Request;

class productcontroller extends Controller
{
    var $route = 'product';
    var $pagename = 'Sản phẩm';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list =
            Product::where('status', '!=', '2')
            ->paginate(10);

        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.product.list', $data);
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
            'action' => route('product.store'),
            'method' => 'POST',
            'category' => category::where('status', '1')->get(),
            'brand' => brand::where('status', '1')->get(),
            'provider' => provider::where('status', '1')->get()
        ];
        return view('backend.product.form', $data);
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
            'product_name' => ['required', 'min:5', 'max:255'],
            'quantity' => ['required', 'min:0', 'numeric'],
            'price' => ['required', 'numeric', 'min:0'],
            'pro_image' => ['required', 'min:5', 'max:255'],
            'description' => ['required'],
            'name_url' => ['required'],
            'detail' => ['required'],
            'status' => ['required'],
            'title' => ['required'],
            'keyword' => ['required'],
            'seo' => ['required'],
            'id_category' => ['required', 'numeric'],
            'id_brand' => ['required', 'numeric'],
            'id_provider' => ['required', 'numeric']
        ], [
            'product_name.required' => 'Tên không được trống',
            'product_name.min' => 'Tên từ 5 tới 255 ký tự',
            'product_name.max' =>  'Tên từ 5 tới 255 ký tự',
            'quantity.min' =>  'Số lượng phải lớn hơn 0',
            'quantity.numeric' => 'Đơn giá không hợp lệ',
            'quantity.required' => 'Số lượng không được trống',
            'price.required' => 'Dơn giá ko đc rỗng',
            'name_url.required' => 'URL ko đc rỗng',

            'price.numeric' => 'Đơn giá không hợp lệ',
            'price.min' => 'Đơn giá không được âm',
            'pro_image.required' => 'Hình không được trống',
            'pro_image.min' => 'Hình từ 5 tới 255 ký tự',
            'pro_image.max' =>  'Hình từ 5 tới 255 ký tự',
            'description.required' => 'Mô tả không được trống',
            'detail.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'title.required' => 'Tiêu đề không được trống',
            'keyword.required' => 'Từ khoá không được trống',
            'seo.required' => 'Mô tả tìm kiếm không được trống',
            'id_category.numeric' => 'Danh mục không hợp lệ',
            'id_category.required' => 'Danh mục không được trống',
            'id_brand.numeric' => 'Thương hiệu không hợp lệ',
            'id_brand.required' => 'Thương hiệu không được trống',
            'id_provider.numeric' => 'Nhà cung cấp không hợp lệ',
            'id_provider.required' => 'Nhà cung cấp không được trống'


        ]);
        $item = product::create();
        // $item->product_name = $request->product_name;
        $item->name_url = $request->name_url;
        // $item->string('product_name');
        $item->price = $request->price;
        $item->quantity = $request->quantity;
        $item->pro_image = $request->pro_image;
        // $item->description = $request->description;
        // $item->url = $request->url;
        // $item->detail = $request->detail;
        $item->status = $request->status;
        $item->created_at = now();
        // $item->ngay_sua = now();
        // $item->title = $request->title;
        $item->seo = $request->seo;
        $item->id_category = $request->id_category;
        $item->id_brand = $request->id_brand;
        $item->id_provider = $request->id_provider;
        $item->save();
        ProductTranslation::insert([
            'product_id' => $item->id,
            'locale' => \App::getLocale(),
            'product_name' => $request->product_name,
            'description' => $request->description,
            'detail' => $request->detail,
            'title' => $request->title,

        ]);
        if ($item->save()) {
            # code...
            return redirect()->route('product.index')->with(['msg' => 'Them Thanh Cong', 'status' => 'success']);
        } else {
            return redirect()->route('product.index')->with(['msg' => 'Them Thất bại Cong', 'status' => 'success']);
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
        $item = product::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('product.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'action' => route('product.update', $id),
            'category' => category::where('status', '1')->get(),
            'brand' => brand::where('status', '1')->get(),
            'provider' => provider::where('status', '1')->get(),
            'method' => 'PUT',
            'item' => $item


        ];
        return view('backend.product.form', $data);
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
        $item = product::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('product.index')->with(['msg' => 'ko tim thay san pham', 'status' => 'danger']);
        $request->validate([
            'product_name' => ['required', 'min:5', 'max:255'],
            'quantity' => ['required', 'min:0', 'numeric'],
            'price' => ['required', 'numeric', 'min:0'],
            'pro_image' => ['required', 'min:5', 'max:255'],
            'description' => ['required'],
            'detail' => ['required'],
            'status' => ['required'],
            'title' => ['required'],
            'keyword' => ['required'],
            'seo' => ['required'],
            'id_category' => ['required', 'numeric'],
            'id_brand' => ['required', 'numeric'],
            'id_provider' => ['required', 'numeric']
        ], [
            'product_name.required' => 'Tên không được trống',
            'product_name.min' => 'Tên từ 5 tới 255 ký tự',
            'product_name.max' =>  'Tên từ 5 tới 255 ký tự',
            'quantity.min' =>  'Số lượng phải lớn hơn 0',
            'quantity.numeric' => 'Đơn giá không hợp lệ',
            'quantity.required' => 'Số lượng không được trống',
            'price.required' => 'Dơn giá ko đc rỗng',
            'price.numeric' => 'Đơn giá không hợp lệ',
            'price.min' => 'Đơn giá không được âm',
            'pro_image.required' => 'Hình không được trống',
            'pro_image.min' => 'Hình từ 5 tới 255 ký tự',
            'pro_image.max' =>  'Hình từ 5 tới 255 ký tự',
            'description.required' => 'Mô tả không được trống',
            'detail.required' => 'Chi tiết không được trống',
            'status.required' => 'Trạng thái không được trống',
            'title.required' => 'Tiêu đề không được trống',
            'keyword.required' => 'Từ khoá không được trống',
            'seo.required' => 'Mô tả tìm kiếm không được trống',
            'id_category.numeric' => 'Danh mục không hợp lệ',
            'id_category.required' => 'Danh mục không được trống',
            'id_brand.numeric' => 'Thương hiệu không hợp lệ',
            'id_brand.required' => 'Thương hiệu không được trống',
            'id_provider.numeric' => 'Nhà cung cấp không hợp lệ',
            'id_provider.required' => 'Nhà cung cấp không được trống'


        ]);
        // $item = sanpham::update();
        // $item->product_name = $request->product_name;
        $item->price = $request->price;
        $item->quantity = $request->quantity;
        $item->pro_image = $request->pro_image;
        // $item->description = $request->description;
        $item->name_url = $request->name_url;
        // $item->detail = $request->detail;
        $item->status = $request->status;
        // $item->ngay_tao = now();
        $item->updated_at = now();
        // $item->title = $request->title;
        $item->keyword = $request->keyword;
        $item->seo = $request->seo;
        $item->id_category = $request->id_category;
        $item->id_brand = $request->id_brand;
        $item->id_provider = $request->id_provider;
        ProductTranslation::where('product_id', $id)->where('locale', \App::getLocale())->update([

            'product_name' => $request->product_name,
            'description' => $request->description,
            'detail' => $request->detail,
            'title' => $request->title,
        ]);
        if ($item->save()) {
            # code...
            return redirect()->route('product.index')->with(['msg' => 'Cập nhật Thành Công', 'status' => 'success']);
        } else {
            return redirect()->route('product.index')->with(['msg' => 'Cập nhật Thất bại Cong', 'status' => 'success']);
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
        product::where('id', $id)->update([
            'status' => 0
        ]);
        $data = [
            'msg' => 'Sản phẩm đã đc xoá',
            'status' => 'success',
            'result' => "Redirect",
            'url' => 'http://localhost:8000/backend/product'
        ];
        return response()->json($data, 200);
    }
}
