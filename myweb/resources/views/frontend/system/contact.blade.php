@extends('frontend.master')
@section('content')

<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>@lang('Liên hệ')</h2>
                    <ul class="text-left">
                        <li><a href="{{route('f.home')}}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Liên hệ')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- contact content section start -->
<div class="pages contact-page section-padding">
    <div class="container text-center">
        <div class="row">
            <div class="col-sm-12">
                <div class="googleMap-info">
                    <div id="googleMap"></div>
                    <div class="map-info">
                        <p><strong>Mốc store</strong></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-10 col-text-center">
                <div class="contact-details">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="single-contact">
                                <i class="mdi mdi-map-marker"></i>
                                <p>@lang('302 Trần Đình Xu , phường Nguyễn Cư Trinh, Quận 1, TP.HCM') </p>

                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-contact">
                                <i class="mdi mdi-phone"></i>
                                <p>(+84) 352902397</p>
                                <p>(+84) 345403998</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-contact">
                                <i class="mdi mdi-email"></i>
                                <p>duykhanh2799@outlook.com</p>
                                <p>mocstore@email.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- contact content section end -->

@endsection
