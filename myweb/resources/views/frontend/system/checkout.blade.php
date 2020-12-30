@extends('frontend.master')
@section('content')
<!-- pages-title-start -->
<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>Checkout</h2>
                    <ul class="text-left">
                        <li><a href="{{ route('f.home') }}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Thanh Toán')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- Checkout content section start -->
<section class="pages checkout section-padding">
    @if (session('msg'))
    <div class="alert alert-{{session('status')}}">
        {!!session('msg')!!}
    </div>
    @endif
    <form action="{{route('f.createbill')}}" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="main-input single-cart-form padding60">
                        <div class="log-title">
                            <h3><strong>@lang('Chi tiết thanh toán')</strong></h3>
                        </div>
                        <div class="custom-input">
                            <input type="text" name="name_bill" placeholder="@lang('Tên khách hàng')" />
                            <input type="text" name="phone_bill" placeholder="@lang('Số điện thoại')" />
                            <input type="text" name="email_bill" placeholder="@lang('Email khách hàng')" />
                            <div class="custom-mess">
                                <textarea rows="2" placeholder="@lang('Địa chỉ') " name="address_bill"></textarea>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="main-input single-cart-form padding60">
                        <div class="log-title">
                            <div> <label><input
                                        onchange="if(this.checked){$('.ttnguoinhan').removeClass('hidden')}else{$('.ttnguoinhan').addClass('hidden')}"
                                        type="checkbox" name="khac" id="khacmua" value="1" /> @lang('Thông tin người
                                    nhận khác người mua')</label></div>
                            <h3><strong>@lang('Thông tin người nhận')</strong></h3>
                            <div class="checkout-form ttnguoinhan hidden">
                                <div class="custom-input">
                                    <input type="text" name="name_ship" placeholder="@lang('Tên người nhận')" />
                                    <input type="text" name="phone_ship"
                                        placeholder="@lang('Số điện thoại người nhận')" />
                                    <input type="text" name="email_ship" placeholder="@lang('Email người nhận')" />
                                    <div class="custom-mess">
                                        <textarea rows="2" placeholder="@lang('Địa chỉ') " name="address_ship"></textarea>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Payment Way -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="row margin-top">
                <div class="col-xs-12 col-sm-6">
                    <div class="padding60">
                        <div class="log-title">
                            <h3><strong>@lang('Thông tin đơn hàng')</strong></h3>
                        </div>
                        <div class="cart-form-text pay-details table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th>@lang('Sản phẩm')</th>
                                        <td>@lang('Giá')</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $tong = 0; @endphp
                                    @foreach($cart as $id=>$item)
                                    @php $tt = ($item['price']-$item['discount'])*$item['qty_order']; $tong+= $tt; $vat=
                                    $tong*(1/10);
                                    $thanhtien=$tong+$vat;
                                    // $vat=$tong*
                                    @endphp
                                    <tr>
                                        <th>{{$item['product_name']}} x {{$item['qty_order']}}</th>
                                        <td>{{number_format($tt)}}</td>
                                    </tr>
                                    @endforeach
                                    <tr>
                                        <th>@lang('Tổng tiền')</th>
                                        <td>{{number_format($tong)}}</td>
                                    </tr>
                                    <tr>
                                        <th>Vat</th>
                                        <td>{{number_format($vat)}}</td>
                                    </tr>

                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>@lang('Tổng')</th>
                                        <td>{{number_format($thanhtien)}}</td>
                                    </tr>

                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                    <div class="padding60">
                        <div class="our-payment-sestem">
                            <h2 class="section-title-3">@lang('Phương thức thanh toán')</h2>
                            <div class="single-checkout-box select-option">
                                <select name="payment_method"
                                    style="float: left;height: 35px;width: 100%;margin-top: 6px;  box-sizing: border-box;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                                    <option value="@lang('Giao hàng tận nơi')">@lang('Giao hàng tận nơi')</option>
                                    <option value="@lang('Tiền mặt')">@lang('Tiền mặt')</option>
                                    <option value="@lang('Chuyển khoản')">@lang('Chuyển khoản')</option>
                                    <option value="@lang('Thẻ nội địa')">@lang('Thẻ nội địa')</option>
                                    <option value="@lang('Thẻ quốc tế')">@lang('Thẻ quốc tế')</option>
                                </select>

                            </div>
                        </div>
                        @csrf
                        <button class="btn btn-success">@lang('Đặt hàng')</button>
                    </div>

                </div>

            </div>
        </div>

    </form>
</section>
<!-- Checkout content section end -->
@endsection
