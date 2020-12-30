@extends('frontend.master')
@section('content')
<div class="main-slider-one slider-area">
    <div id="wrapper">
        <div class="slider-wrapper">
            <div id="mainSlider" class="nivoSlider">
                <img src="{{('frontend/img/slider/home1/1.jpg')}}" alt="main slider" title="#htmlcaption"/>
                <img src="{{('frontend/img/slider/home1/2.jpg')}}" alt="main slider" title="#htmlcaption2"/>
            </div>
            <div id="htmlcaption" style="color: seashell" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div class="slider-left slider-right" >
                        <div class="slide-text animated bounceInRight">
                            <h3 class="bounceInDown" style="color: seashell">Asus</h3>
                            <h1 style="color: seashell">ROG Strix SCAR 15/17</h1>
                            <span style="color: seashell">Giá chỉ từ 35.000.000</span>
                        </div>
                        <div class="one-p animated bounceInLeft">
                            <p style="color: seashell">Tốc độ, sức mạnh và hiệu năng vượt trội đưa ROG Strix SCAR 15/17 lên top đầu laptop gaming chạy Windows 10. Bộ vi xử lý Intel® Core™ i7 thế hệ thứ 10 mới nhất và card đồ họa GeForce® RTX™ hỗ trợ tấm nền gaming 300Hz/3ms, đưa tốc độ các trận đấu esport chuyên nghiệp lên tầm cao mới. Hệ thống làm mát thông minh như keo tản nhiệt kim loại lỏng trên CPU đẩy hiệu năng lên tối đa. Công nghệ kết nối Wi-Fi 6 siêu nhanh và hai ổ SSD RAID 0 tăng tốc hiệu suất làm việc của bạn, trong khi khe cho SSD thứ ba giúp nâng cấp bộ nhớ dễ dàng.</p>
                        </div>
                        <div class="animated slider-btn fadeInUpBig">
                            <a class="shop-btn" href="{{ route('f.single_product',43) }}" style="color: seashell">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="htmlcaption2" style="color: seashell" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div class="slider-left slider-right">
                        <div class="slide-text animated bounceInRight">
                            <h3 style="color: seashell">iPhone 12 Pro Max</h3>
                            <h1 style="color: seashell"></h1>
                            <span style="color: seashell">Giá chỉ từ 29.900.000!</span>
                        </div >
                        <div style="color: seashell" class="one-p animated bounceInLeft">
                            <p style="color: seashell">Chip A14 Bionic, chip xử lý nhanh nhất trên điện thoại thông minh. Hệ thống camera chuyên nghiệp mang nghệ thuật nhiếp ảnh low-light lên một tầm cao mới với nâng cấp kinh ngạc trên iPhone 12 Pro Max.".</p>
                        </div>
                        <div style="color: seashell" class="animated slider-btn fadeInUpBig">
                            <a class="shop-btn" href="{{ route('f.single_product',31) }}">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider section end -->
<!-- collection section start -->

<!-- collection section end -->
<!-- featured-products section start -->
<section class="single-products section-padding extra-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title text-center">
                    <h2>@lang('Sản phẩm mới')</h2>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <ul class="load-list load-list-one">
                <li>
                    <div class="row text-center">
                        @foreach ($list as $item)
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="#"><img  width="270px" height="350px" src="{{($item->pro_image)}}" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a class="addtocart" data-href="{{ route('f.addtocartajax') }}" data-id="{{($item->id)}}"><i class="mdi mdi-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick-view{{($item->id)}}"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="{{ route('f.single_product',[$item->id]) }}">{{($item->product_name)}}</a></p>
                                    <div class="ratting">
                                        <i class="mdi mdi-star"></i>
                                        <i class="mdi mdi-star"></i>
                                        <i class="mdi mdi-star"></i>
                                        <i class="mdi mdi-star-half"></i>
                                        <i class="mdi mdi-star-outline"></i>
                                    </div>
                                    <span>{{(number_format($item->price))}}</span>
                                </div>
                            </div>
                        </div>
                        <!-- single product end -->
                        @endforeach

                    </div>
                </li>
                <li>
                    <div class="row text-center">
                        {{-- <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="pro-type">
                                        <span>new</span>
                                    </div>
                                    <a href="#"><img src="img/products/5.jpg" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a href="#"><i class="mdi mdi-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick-view"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="#">men’s White t-shirt</a></p>
                                    <span>$165.20</span>
                                </div>
                            </div>
                        </div>
                        <!-- single product end -->
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="#"><img src="img/products/6.jpg" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a href="#"><i class="mdi mdi-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick-view"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="#">men’s Black t-shirt</a></p>
                                    <span>$57.00</span>
                                </div>
                            </div>
                        </div>
                        <!-- single product end -->
                        <div class="col-xs-12 col-sm-6 col-md-3 r-margin-top">
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="pro-type">
                                        <span>new</span>
                                    </div>
                                    <a href="#"><img src="img/products/7.jpg" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a href="#"><i class="mdi mdi-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick-view"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="#">men’s Grey t-shirt</a></p>
                                    <span>$67.00</span>
                                </div>
                            </div>
                        </div>
                        <!-- single product end -->
                        <div class="col-xs-12 col-sm-6 col-md-3 r-margin-top">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="#"><img src="img/products/8.jpg" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a href="#"><i class="mdi mdi-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick-view"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="#">men’s Blue t-shirt</a></p>
                                    <span>$77.00</span>
                                </div>
                            </div>
                        </div>
                        <!-- single product end --> --}}
                    </div>
                </li>
            </ul>
            <button id="load-more-one">@lang('Xem thêm')</button>
        </div>
    </div>
</section>
<!-- featured-products section end -->
<!-- coming product section start -->

<!-- coming product section end -->
<!-- tab-products section start -->

<!-- tab-products section end -->
<!-- service section start -->
<section class="service-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title text-center">
                    <h2>@lang('Dịch vụ của chúng tôi')</h2>
                </div>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-sm-4">
                <div class="service-text">
                    <i class="mdi mdi-truck"></i>
                    <h4>@lang('GIAO HÀNG TẬN NƠI')</h4>
                    <p>@lang('Chúng tôi sẽ vận chuyển và') <br> @lang('quý khách ở nhà vẫn có thể nhận hàng.')</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="service-text">
                    <i class="mdi mdi-lock"></i>

                    <h4>@lang('THANH TOÁN BẢO MẬT')</h4>

                    <p> Thanh toán qua ngân hàng <br> bảo mật thông tin khách hàng </p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="service-text">
                    <i class="mdi mdi-rotate-left"></i>

                    <h4>@lang('HOÀN TIỀN TRONG 30 NGÀY')</h4>
                    <p> @lang('Đổi trả hàng miễn phí') <br>@lang(' trong 30 ngày kể từ khi nhận hàng .')</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- service section end -->
<!-- blog section start -->

<!-- blog section end -->
<!-- quick view start -->
@foreach ($list as $item)
<div class="product-details quick-view modal animated zoomInUp" id="quick-view{{($item->id)}}">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="d-table">
                    <div class="d-tablecell">
                        <div class="modal-dialog">
                            <div class="main-view modal-content">
                                <div class="modal-footer" data-dismiss="modal">
                                    <span>x</span>
                                </div>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-5 col-md-4">
                                        <div class="quick-image">
                                            <div class="single-quick-image text-center">
                                                <div class="list-img">
                                                    <div class="product-img tab-content">
                                                        <div class="simpleLens-container tab-pane fade in" id="q-sin-1">
                                                            <div class="pro-type">
                                                                <span>new</span>
                                                            </div>
                                                            <a class="simpleLens-image" data-lens-image="" href="#"><img src="" alt="" class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane active fade in" id="q-sin-2">
                                                            <div class="pro-type sell">
                                                                <span>sell</span>
                                                            </div>
                                                            <a class="simpleLens-image" data-lens-image="{{($item->pro_image)}}" href="#"><img src="{{($item->pro_image)}}" alt="" class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane fade in" id="q-sin-3">
                                                            <div class="pro-type">
                                                                <span>-15%</span>
                                                            </div>
                                                            <a class="simpleLens-image" data-lens-image="" href="#"><img src="" alt="" class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane fade in" id="q-sin-4">
                                                            <div class="pro-type">
                                                                <span>new</span>
                                                            </div>
                                                            <a class="simpleLens-image" data-lens-image="" href="#"><img src="" alt="" class="simpleLens-big-image"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="quick-thumb">
                                                <ul class="product-slider">
                                                    <li><a data-toggle="tab" href="#q-sin-1"> <img src="" alt="quick view" /> </a></li>
                                                    <li class="active"><a data-toggle="tab" href="#q-sin-2"> <img src="" alt="small image" /> </a></li>
                                                    <li><a data-toggle="tab" href="#q-sin-3"> <img src="" alt="small image" /> </a></li>
                                                    <li><a data-toggle="tab" href="#q-sin-4"> <img src="" alt="small image" /> </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8">
                                        <div class="quick-right">
                                            <div class="list-text">
                                                <h3>{{($item->title)}}</h3>
                                                <span> {{($item->thuong_hieu)}}</span>
                                                <div class="ratting floatright">
                                                    <p>( 27 Rating )</p>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star-half"></i>
                                                    <i class="mdi mdi-star-outline"></i>
                                                </div>
                                                <h5>{{(number_format($item->price))}}</h5>
                                                {{($item->detail)}}
                                                <div class="all-choose">


                                                    <div class="s-shoose">
                                                        <h5>qty</h5>
                                                        <form action="#" method="POST">
                                                            <div class="plus-minus">
                                                                <a class="dec qtybutton">-</a>
                                                                <input type="text" value="02" name="qtybutton" class="plus-minus-box">
                                                                <a class="inc qtybutton">+</a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="list-btn">
                                                    <a class="addtocart" data-href="{{ route('f.addtocartajax') }}" data-id="{{($item->id)}}">add to cart</a>
                                                    <a href="#">wishlist</a>
                                                    <a href="#" data-toggle="modal" data-target="#quick-view{{($item->id)}}">zoom</a>
                                                </div>
                                                <div class="share-tag clearfix">
                                                    <ul class="blog-share floatleft">
                                                        <li><h5>share </h5></li>
                                                        <li><a href="#"><i class="mdi mdi-facebook"></i></a></li>
                                                        <li><a href="#"><i class="mdi mdi-twitter"></i></a></li>
                                                        <li><a href="#"><i class="mdi mdi-linkedin"></i></a></li>
                                                        <li><a href="#"><i class="mdi mdi-vimeo"></i></a></li>
                                                        <li><a href="#"><i class="mdi mdi-dribbble"></i></a></li>
                                                        <li><a href="#"><i class="mdi mdi-instagram"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach
@endsection
