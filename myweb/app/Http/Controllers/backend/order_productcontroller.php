<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\brand;
use App\Models\category;
use App\Models\order_status;
use App\Models\orders;
use App\Models\product;
use App\Models\provider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class order_productcontroller extends Controller
{
    var $route = 'order';
    var $pagename = 'Đơn hàng';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $list =
            orders::where('status', '!=', '2')
            ->paginate(10);

        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list
        ];
        return view('backend.order.list', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

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
        $item = orders::where('id', $id)->where('status', '!=', '2')->first();
        if (!$item)
            return redirect()->route('order.index')->with(['msg' => 'ko tìm thấy đơn hàng', 'status' => 'danger']);
        $data = [
            'pagename' => $this->pagename,
            'route' => $this->route,
            'status' => order_status::where('status', '1')->get(),
            'action' => route('order.update', $id),
            'method' => 'PUT',
            'item' => $item
        ];
        return view('backend.order.form', $data);
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
        $item = orders::where('id', $id)->where('status', '!=', '2')->first();

        if (!$item)
            return redirect()->route('product.index')->with(['msg' => 'ko tim thấy sản phẩm', 'status' => 'danger']);
        $request->validate([
            'name_ship' => ['required', 'min:5', 'max:255'],
            'email_ship' => ['required'],
            'phone_ship' => ['required'],
            'address_ship' => ['required'],
            'id_order_status' => ['required'],
        ], [
            'name_ship.required' => 'Tên ship không được trống',
            'name_ship.min' => 'Tên từ 5 tới 255 ký tự',
            'name_ship.max' =>  'Tên từ 5 tới 255 ký tự',
            'email_ship.required' => 'Email không được trống',
            'phone_ship.required' => 'Số điện thoại ko đc rỗng',
            'address_ship.required' => 'Địa chỉ không được trống',
            'id_order_status.required' => 'trạng thái không được trống'
        ]);
        // $item = sanpham::update();
        $item->name_ship = $request->name_ship;
        $item->email_ship = $request->email_ship;
        $item->phone_ship = $request->phone_ship;
        $item->address_ship = $request->address_ship;
        $item->id_order_status = $request->id_order_status;
        // $tt = order_status::where('id', $item->id_order_status)->GET();
        // dd($tt);
        $status = order_status::where('id', $item->id_order_status)->first();
        // $a = $status->name;
        // dd($status->name);
        $mes_bill_to_customer = "Mã đơn hàng: " . $item->code . "<br>" .
            "Tên khách hàng" . $item->name_bill .  "<br>" .
            "Số điện thoại nhận hàng " . $item->phone_bill . "<br>" .
            "Địa chỉ giao hàng" . $item->address_ship . "<br>" .
            "Trạng thái" . $status->name . "<br>";
        Mail::raw($mes_bill_to_customer, function ($message) use ($item, $mes_bill_to_customer) {
            $message->to($item->email_bill, $item->name_bill);
            $message->subject("Thông báo tình trạng đơn hàng");
        });
        if ($item->save()) {
            # code...
            return redirect()->route('order.index')->with(['msg' => 'Cập nhật Thành Công', 'status' => 'success']);
        } else {
            return redirect()->route('order.index')->with(['msg' => 'Cập nhật Thất bại Cong', 'status' => 'success']);
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
