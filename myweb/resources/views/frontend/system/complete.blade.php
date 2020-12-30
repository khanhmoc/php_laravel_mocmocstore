@extends('frontend.master')
@section('content')
<!-- pages-title-start -->
<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>{{$pagename}}</h2>
                    <ul class="text-left">
                        <li><a href="{{route('f.home')}}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Hoàn Thành Đơn Hàng')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- order-complete content section start -->
<section class="pages checkout order-complete section-padding">
    <div class="container">
        <div class="row">
            @if (session('msg'))
            <div class="alert alert-{{session('status')}}">
                {!!session('msg')!!}
            </div>
            @endif
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <div class="padding60">
                    <div class="log-title">
                        <h3><strong>@lang('Thông tin đơn hàng')</strong></h3>
                    </div>
                    <div class="cart-form-text pay-details">
                        <table>
                            <thead>
                                <tr>
                                    <th>@lang('Sản phẩm')</th>
                                    <td>@lang('Tổng tiền')</td>
                                </tr>
                            </thead>



                            <tbody>
                                @foreach ($order->ordersdetail as $item)
                                @php $tong = 0; @endphp

                                @php $tt = $item->price*$item->quantity; $tong+= $tt; $vat= $tong*(1/10);
                                $thanhtien=$tong+$vat;
                                @endphp
                                <tr>
                                    <th>{{$item->product->product_name}} x {{$item->quantity}}</th>
                                    <td>{{number_format($item->price)}}</td>
                                </tr>
                                @endforeach
                                <tr>
                                    <th>Vat</th>
                                    <td>{{$vat}}</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>@lang('Thành tiền')</th>
                                    <td>{{number_format($thanhtien)}}</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div class="order-address bill padding60">
                    <div class="log-title">
                        <h3><strong>Đơn hàng của bạn</strong></h3>
                    </div>
                    <p>@lang('Mã đơn hàng') <strong>{{$order->code}}</strong></p>
                    <br>
                    @lang('Vui lòng kiểm tra email để xác nhận thông tin đặt hàng.')

                </div>
                <div class="order-details padding60">
                    <div class="log-title">
                        <h3><strong>@lang('Thông tin người nhận')</strong></h3>
                    </div>
                    <div class="por-dse clearfix">
                        <ul>
                            <li><span>@lang('Tên người nhận')<strong>:</strong></span> {{$order->name_ship}}</li>
                            <li><span>@lang('Email người nhận')<strong>:</strong></span> {{$order->email_ship}}</li>
                            <li><span>@lang('Số điện thoại người nhận')<strong>:</strong></span> {{$order->phone_ship}}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- order-complete content section end -->
@endsection
