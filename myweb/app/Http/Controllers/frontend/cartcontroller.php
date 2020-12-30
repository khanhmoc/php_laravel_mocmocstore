<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\product;
use Illuminate\Http\Request;

class cartcontroller extends Controller
{
    var $pagename = 'CART';

    function cart(Request $request)
    {
        $cart = session('cart');

        $quantity = 0;
        if (isset($cart)) {
            foreach ($cart as $id => $item) {
                $quantity++;
            }
        }
        $data = [
            'pagename' => $this->pagename,
            'cart' => $cart,
            'n' => $quantity
        ];
        return view('frontend.system.cart', $data);
    }

    public function addtocart($id)
    {
        $product = product::where(['id' => $id, 'status' => 1])->first();
        if (!$product)
            return redirect()->route('f.product')->with(['msg' => 'Sản phẩm không tồn tại', 'status' => 'danger']);
        if ($product->quantity < 1)
            return redirect()->route('f.product')->with(['msg' => 'Sản phẩm hết hàng', 'status' => 'danger']);
        $giohang = session('cart');

        if (isset($giohang[$product->id])) {
            $giohang[$product->id]['qty_order']++;
        } else {
            $giohang[$product->id] = [
                'id' => $product->id,
                'pro_image' => $product->pro_image,
                'product_name' => $product->product_name,
                'discount' => $product->discount,
                'price' => $product->price,
                'quantity' => $product->quantity,
                'qty_order' => 1
            ];
        }
        session(['cart' => $giohang]);
        return redirect()->route('f.product')->with(['msg' => 'Thêm thành công', 'status' => 'success']);
    }
    public function addtocart_ajax(Request $request)

    {
        $product = product::where(['id' => $request->id, 'status' => 1])->first();
        if (!$product)
            return response()->json(['msg' => 'Sản phẩm không tồn tại', 'status' => 'danger'], 200);
        if ($product->quantity < 1)

            return response()->json(['msg' => 'Sản phẩm hết hàng', 'status' => 'danger'], 200);
        $giohang = session('cart');

        if (isset($giohang[$product->id])) {
            $giohang[$product->id]['qty_order']++;
        } else {
            $giohang[$product->id] = [
                'id' => $product->id,
                'pro_image' => $product->pro_image,
                'product_name' => $product->product_name,
                'discount' => $product->discount,
                'price' => $product->price,
                'quantity' => $product->quantity,
                'qty_order' => 1,



            ];
        }

        session(['cart' => $giohang]);
        $total = 0;
        $count = 0;
        foreach ($giohang as $id => $item) {
            $total += $item['qty_order'] * $item['price'] - $item['discount'];
            $count++;
        }
        $shipping = 0;
        $data = [
            'msg' => 'Thêm thành công',
            'status' => 'success',
            'count' => count($giohang),
            'cart' => $giohang,
            'total' => $total,
            'vat' => $total * 0.1,
            'order_total' => ($total + 0.1 * $total + $shipping),
            // gio in moi img thoi in tung cai trc roi nối sau
            // chua truyen gio hang qua ma` ?
        ];

        return response()->json($data, 200);
    }
    public function removeitem($id)
    {
        $giohang = session('cart');
        if (isset($giohang[$id])) {
            unset($giohang[$id]);
        }
        session(['cart' => $giohang]);
        return redirect()->route('f.cart')->with(['msg' => 'Xoá thành công', 'status' => 'success']);
    }
    public function removeitem_ajax(Request $request)
    {
        $giohang = session('cart');
        if (isset($giohang[$request->id])) {
            unset($giohang[$request->id]);
        }
        session(['cart' => $giohang]);
        $total = 0;
        $count = 0;
        $total_price = 0;
        foreach ($giohang as $id => $item) {
            $total += $item['qty_order'] * $item['price'] - $item['discount'];
            $count++;
        }
        $shipping = 0;
        $data = [
            'msg' => 'xoá thành công',
            'status' => 'success',
            'count' => count($giohang),
            'cart' => $giohang,
            'total' => $total,
            'total_price' => $total_price,
            'vat' => $total * 0.1,
            'order_total' => ($total + 0.1 * $total + $shipping),
        ];

        return response()->json($data, 200);
    }
    public function updatecart(Request $request)
    {

        if (!is_array($request->soluong))
            return redirect()->route('f.cart')->with(['msg' => 'Dữ liệu không hợp lệ', 'status' => 'danger']);
        $msg = '';
        $giohang = session('cart');
        foreach ($request->soluong as $id => $soluong) {
            if ($giohang[$id]['quantity'] >= $soluong) {
                $giohang[$id]['qty_order'] = $soluong;
            } else {
                $msg .= $giohang[$id]['product_name'] . ' không đủ số lượng.<br>';
            }
        }
        session(['cart' => $giohang]);
        if (!$msg) {
            $msg = 'Cập nhật thành công';
            $status = 'success';
        } else {
            $msg = rtrim($msg, '<br>');
            $status = 'danger';
        }
        return redirect()->route('f.cart')->with(['msg' => $msg, 'status' => $status]);
    }
    public function updatecart_ajax_up(Request $request)
    {
        // dd($request->all());
        $giohang = session('cart');
        if (isset($giohang[$request->id])) {
            $giohang[$request->id]['qty_order']++;
        }
        if ($giohang[$request->id]['qty_order'] > 3) {
            $giohang = session('cart');
            $total = 0;
            $count = 0;
            $total_price = 0;
            foreach ($giohang as $id => $item) {
                $total += $item['qty_order'] * $item['price'] - $item['discount'];
                $count++;
            }
            $shipping = 0;
            $data = [
                'msg' => 'Số lượng sản phẩm không được lớn hơn 3',
                'status' => 'success',
                'count' => count($giohang),
                'cart' => $giohang,
                'total' => $total,
                'total_price' => $total_price,
                'vat' => $total * 0.1,
                'order_total' => ($total + 0.1 * $total + $shipping),
            ];
            return response()->json($data, 200);
        }
        session(['cart' => $giohang]);
        $total = 0;
        $count = 0;
        $total_price = 0;
        foreach ($giohang as $id => $item) {
            $total += $item['qty_order'] * $item['price'] - $item['discount'];
            $count++;
        }
        $shipping = 0;
        $data = [
            'msg' => 'Cập nhật thành công',
            'status' => 'success',
            'count' => count($giohang),
            'cart' => $giohang,
            'total' => $total,
            'total_price' => $total_price,
            'vat' => $total * 0.1,
            'order_total' => ($total + 0.1 * $total + $shipping),
        ];
        return response()->json($data, 200);
    }
    public function updatecart_ajax_down(Request $request)
    {
        // dd($request->all());
        $giohang = session('cart');
        if (isset($giohang[$request->id])) {
            $giohang[$request->id]['qty_order']--;
        }
        if ($giohang[$request->id]['qty_order'] == 0) {
            unset($giohang[$request->id]);
        }
        session(['cart' => $giohang]);
        $total = 0;
        $count = 0;
        $total_price = 0;
        foreach ($giohang as $id => $item) {
            $total += $item['qty_order'] * $item['price'] - $item['discount'];
            $count++;
        }
        $shipping = 0;
        $data = [
            'msg' => 'Cập nhật thành công',
            'status' => 'success',
            'count' => count($giohang),
            'cart' => $giohang,
            'total' => $total,
            'total_price' => $total_price,
            'vat' => $total * 0.1,
            'order_total' => ($total + 0.1 * $total + $shipping),
        ];
        return response()->json($data, 200);
    }
}
