<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\brand;
use App\Models\Category;
use App\Models\product;
use App\Models\ProductTranslation;
use App\Models\provider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class homecontroller extends Controller
{
    //
    var $route = 'frontend';

    var $langs = ["vi", "en"];
    public function translate($lang = "vi")
    {
        // dd($language);
        if (in_array($lang, $this->langs)) {

            session(['lang' => $lang]);
        }
        return back();
    }
    public function home()
    {
        $list = Product::where('pro_new', 1)->paginate(12);

        $data = [
            'list' => $list,
            'route' => $this->route

        ];
        return view('frontend.system.dashboard', $data);
    }
    public function product()
    {
        // dd(session());
        $danhmuc = Category::where('status', 1)->get();
        // dd($danhmuc);
        $brand = brand::Where('status', 1)->get();
        $list = Product::where('status', 1)->paginate(12);
        $data = [
            'route' => $this->route,
            'list' => $list,
            'brand' => $brand,
            'danhmuc' => $danhmuc,

        ];
        return view('frontend.system.product', $data);
    }
    public function single_pro(Request $request)
    {
        # code...
        $danhmuc = Category::where('status', 1)->get();
        $brand = brand::Where('status', 1)->get();
        $list =
            $a = product::where('status', 1)
            ->paginate(9);
        // dd($danhmuc);
        $cart = session('cart');
        $data = [
            // 'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list,
            'cart' => $cart,
            'brand' => $brand,
            'danhmuc' => $danhmuc

        ];
        return view('frontend.system.product', $data);
    }
    public function product_grid(Request $request)
    {
        $category = Category::where('status', 1)->get();
        $brand = brand::Where('status', 1)->get();
        $provider = provider::Where('status', 1)->get();
        $list =
            $a = product::where('status', 1)
            ->paginate(9);
        // dd($danhmuc);
        $cart = session('cart');
        $data = [
            // 'pagename' => $this->pagename,
            'route' => $this->route,
            'list' => $list,
            'cart' => $cart,
            'brand' => $brand,
            'category' => $category,
            'provider' => $provider

        ];
        return view('frontend.system.product_grid', $data);
    }

    public function search_category(Request $request)
    {
        $category = Category::where('status', 1)->get();
        $brand = brand::Where('status', 1)->get();
        $provider = provider::Where('status', 1)->get();
        $list =
            product::where('status', 1)->where('id_category', $request->id)
            ->paginate(9);
        // dd($list);
        $data = [
            'status' => 'success',
            'list' => $list,
            'brand' => $brand,
            'category' => $category,
            'provider' => $provider,
            'msg' => "Sắp xếp xếp thành công"

        ];
        return response()->json($data, 200);
    }
    public function search_brand(Request $request)
    {
        $category = Category::where('status', 1)->get();
        $brand = brand::Where('status', 1)->get();
        $provider = provider::Where('status', 1)->get();
        $list =
            product::where('status', 1)->where('id_brand', $request->id)
            ->paginate(9);
        $data = [
            'status' => 'success',
            'list' => $list,
            'brand' => $brand,
            'category' => $category,
            'provider' => $provider,
            'msg' => "Sắp xếp xep thành công"

        ];
        return response()->json($data, 200);
    }
    public function search_provider(Request $request)
    {
        $category = Category::where('status', 1)->get();
        $brand = brand::Where('status', 1)->get();
        $provider = provider::Where('status', 1)->get();
        $list =
            product::where('status', 1)->where('id_provider', $request->id)
            ->paginate(9);
        $data = [
            'status' => 'success',
            'list' => $list,
            'brand' => $brand,
            'category' => $category,
            'provider' => $provider,
            'msg' => "Sắp xếp xep thành công"

        ];
        return response()->json($data, 200);
    }
    public function about()
    {
        $cart = session('cart');
        $data = [
            'route' => $this->route,
            // 'list' => $list
            'cart' => $cart
        ];

        return view('frontend.system.about', $data);
    }
    public function contact()
    {
        $cart = session('cart');
        $data = [
            'route' => $this->route,
            // 'list' => $list
            'cart' => $cart
        ];

        return view('frontend.system.contact', $data);
    }
    public function complainpost(Request $request)
    {

        //gửi nội dung bình thường khong có html
        Mail::raw($request->message, function ($message) use ($request) {
            $message->to($request->email, 'test');
            $message->subject($request->type);
        });
        return redirect()->route('f.home')->with(['msg' => 'Gửi liên hệ thành công chũng tôi sẽ sớm liên hệ với bạn ', 'status' => 'success']);
    }
    public function single_product($id)
    {
        $product = product::where(['id' => $id, 'status' => 1])->first();
        $category = Category::where('status', 1)->first();
        $brand = brand::Where('status', 1)->first();
        $provider = provider::Where('status', 1)->first();
        if (!$product)
            return redirect()->route('f.product')->with(['msg' => 'Sản phẩm không tồn tại', 'status' => 'danger']);
        // $cart = session('cart');
        $data = [
            'status' => 'success',
            'brand' => $brand,
            'category' => $category,
            'provider' => $provider,
            'product' => $product,
            'msg' => "Sắp xếp xep thành công"
        ];

        return view('frontend.system.single_product', $data);
    }
}
