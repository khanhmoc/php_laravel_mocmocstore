<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\orders;
use App\Models\ordersdetail;
use App\Models\product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ordercontroller extends Controller
{
    //
    public function checkout()
    {
        $cart = session('cart');
        if (!$cart)
            return redirect()->route('f.cart')->with(['msg' => 'Giỏ hàng rỗng', 'status' => 'danger']);
        $data = [
            'pagename' => 'Đặt hàng',
            'cart' => $cart
        ];
        return view('frontend.system.checkout', $data);
    }
    public function create(Request $request)
    {
        //dd($request->all());
        $cart = session('cart');

        if (!$cart)
            return redirect()->route('f.cart')->with(['msg' => 'Giỏ hàng rỗng', 'status' => 'danger']);
        //tự validate
        //tạo đơn
        $order = orders::create();
        $order->order_date = now();
        $order->status  = 1;
        $order->name_bill = $request->name_bill;
        $order->phone_bill = $request->phone_bill;
        $order->email_bill = $request->email_bill;
        $order->address_bill = $request->address_bill;
        $order->note = $request->note;
        if ($request->khac) {
            $order->name_ship = $request->name_ship;
            $order->phone_ship =  $request->phone_ship;
            $order->email_ship =  $request->email_ship;
            $order->address_ship = $request->address_ship;
        } else {
            $order->name_ship = $order->name_bill;
            $order->phone_ship = $order->phone_bill;
            $order->email_ship = $order->email_bill;
            $order->address_ship = $order->address_bill;
        }
        $order->fee  = 0;
        $order->create_at = now();
        $order->payment_method  = $request->payment_method;
        $order->code = time();
        // dd($order);
        if ($order->save()) {
            //ghi chi tiet don
            $total = 0;
            foreach ($cart as $pid => $item) {
                $total += ($item['qty_order'] * $item['price']) * 1.1;
                ordersdetail::insert([
                    'id_order' => $order->id,
                    'id_product' => $pid,
                    'quantity' => $item['qty_order'],
                    'price' => $item['price'],
                    'create_at' => now()

                ]);
                //tru kho
                product::where('id', $pid)->update([
                    'quantity' => $item['quantity'] - $item['qty_order']
                ]);
            }
            //cập nhat total cho donhang
            $order->total = $total;
            $order->save();
            //xoa het session
            //session()->flush();//xoa het
            session()->forget(['cart']); // xoa tung cai
            $mes_bill_to_customer = "Mã đơn hàng: " . $order->code . "<br>" .
                "Tên khách hàng" . $order->name_bill .  "<br>" .
                "Số điện thoại nhận hàng " . $order->phone_bill . "<br>" .
                "Địa chỉ giao hàng" . $order->address_ship . "<br>";
            Mail::raw($mes_bill_to_customer, function ($message) use ($order, $mes_bill_to_customer) {
                $message->to($order->email_bill, $order->name_bill);
                $message->subject("Cảm ơn bạn đã đặt hàng tại shop đây là thông báo order thành công");
            });
            //tra ve trang thong bao hoan tat don hang và gui mail
            return redirect()->route('f.completed')->with(['order' => $order, 'status' => 'success']);
        } else {
            return redirect()->back()->with(['msg' => 'Không thể tạo đơn hàng, vui lòng thử lại', 'status' => 'danger']);
        }
    }
    public function completed()
    {
        $order  = session('order');
        $cart = session('cart');
        if (!$order)
            return redirect()->route('f.cart')->with(['msg' => 'Giỏ hàng rỗng', 'status' => 'danger']);
        $data = [
            'pagename' => 'Hoàn tất đơn hàng',
            'order' => $order,
            'cart' => $cart
        ];
        return view('frontend.system.complete', $data);
    }
}
