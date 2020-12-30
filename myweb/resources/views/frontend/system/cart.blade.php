@extends('frontend.master')
@section('content')
<!-- pages-title-start -->
<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>{{($pagename)}}</h2>
                    <ul class="text-left">
                        <li><a href="{{route('f.home')}}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Giỏ hàng')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- cart content section start -->

<section class="pages cart-page section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="table-responsive padding60">
                    @if(isset($cart))
                    <table class="wishlist-table text-center">
                        <thead>
                            <tr>
                                <th>@lang('Sản phẩm')</th>
                                <th>@lang('Giá')</th>
                                <th>@lang('Giảm giá')</th>
                                <th>@lang('Số Lượng')</th>
                                <th>@lang('Tổng tiền')</th>
                                <th>@lang('Xoá')</th>
                            </tr>
                        </thead>
                        <tbody id="cart_detail">
                            @php $tong = 0;
                            $tt=0;
                            $vat=0;
                            $thanhtien=0;
                             @endphp
                            @foreach($cart as $id=>$item)
                            @php $tt = ($item['price']-$item['discount'])*$item['qty_order']; $tong+= $tt; $vat= $tong*(1/10);
                            $thanhtien=$tong+$vat;
                            // $vat=$tong*
                            @endphp
                            <tr>
                                <td class="td-img text-left">
                                    <a href="#"><img src="{{$item['pro_image']}}" alt="Add Product" /></a>
                                    <div class="items-dsc">
                                        <h5><a href="#">{{$item['product_name']}}</a></h5>

                                    </div>
                                </td>
                                <td>{{number_format($item['price'])}}</td>
                                <td>-{{number_format($item['discount']*$item['qty_order'])}}</td>
                                <td>
                                    <form action="#" method="POST">
                                        <div class="plus-minus">
                                            <a class="down_item" data-href="{{ route('f.updatecart_ajax_down') }}"
                                                data-id="{{$item['id']}}">-</a>
                                            <input type="text" value="{{$item['qty_order']}}" readonly name="qtybutton"
                                                class="plus-minus-box">
                                            <a class="up_item" data-href="{{ route('f.updatecart_ajax_up') }}"
                                                data-val="{{$item['qty_order']+1}}" data-id="{{$item['id']}}">+</a>
                                        </div>
                                    </form>
                                </td>
                                <td>
                                    <strong>{{number_format($tt)}}</strong>
                                </td>
                                <td><a onclick="return confirm('Do you want to delete it?')" class="remoteitem"
                                        data-href="{{ route('f.removeitemajax') }}" data-id="{{$item['id']}}"><i
                                            class="mdi mdi-close" class="action"><i></i></a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    @else
                    <p class="alert alert-warning text-center">@lang('Giỏ hàng rỗng') <a href="{{route('f.home')}}">@lang('Trang chủ')</a>
                    </p>
                    @endif


                </div>
            </div>
        </div>
        <div class="row margin-top">
            <div class="col-sm-6">
                <div class="single-cart-form padding60">
                    <div class="log-title">
                        <h3><strong>@lang('mã giảm giá')</strong></h3>
                    </div>
                    <div class="cart-form-text custom-input">
                        <p>@lang('Nhập mã phiếu giảm giá của bạn nếu bạn có!')</p>
                        <form action="mail.php" method="post">
                            <input type="text" name="subject" placeholder="Nhập mã giảm giá ở đây..." />
                            <div class="submit-text coupon">
                                <button type="submit">@lang('Áp dụng ') </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="single-cart-form padding60">
                    <div class="log-title">
                        <h3><strong>@lang('Chi tiết thanh toán')</strong></h3>
                    </div>
                    <div class="cart-form-text pay-details table-responsive">
                        <table id="checkout_detail">
                            <tbody>
                                @if (isset($cart))
                                <tr>
                                    <th>@lang('Tổng tiền')<nav></nav>
                                    </th>
                                    <td id="total">{{number_format($tong)}}</td>
                                </tr>
                                <tr>
                                    <th>@lang('Phí vận chuyển')</th>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <th>VAT</th>
                                    <td id="vat">{{number_format($vat)}}</td>
                                </tr>


                            </tbody>
                            <tfoot>
                                <tr>
                                    <th class="tfoot-padd">@lang('Thành tiền')</th>
                                    <td class="tfoot-padd" id="order_total"> {{number_format($thanhtien)}}</td>
                                </tr>
                                <tr>
                                    <th class="tfoot-padd"></th>
                                    <td class="tfoot-padd"><a href="{{ route('f.checkout') }}">@lang('Thanh toán')</a> </td>
                                </tr>
                            </tfoot>
                            @endif
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row margin-top">
            <div class="col-xs-12">
                <div class="padding60">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="single-cart-form">
                                <div class="log-title">
                                    <h3><strong>calculate shipping</strong></h3>
                                </div>
                                <div class="cart-form-text custom-input">
                                    <p>Enter your coupon code if you have one!</p>
                                    <form action="mail.php" method="post">
                                        <input type="text" name="country" placeholder="Country" />
                                        <div class="submit-text">
                                            <button type="submit">get a quote</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="single-cart-form">
                                <div class="cart-form-text post-state custom-input">
                                    <form action="mail.php" method="post">
                                        <input type="text" name="state" placeholder="Region / State" />
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="single-cart-form">
                                <div class="cart-form-text post-state custom-input">
                                    <form action="mail.php" method="post">
                                        <input type="text" name="subject" placeholder="Post Code" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- cart content section end -->
@endsection
