@extends('frontend.master')
@section('content')
<!-- pages-title-start -->
<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>@lang('Sản phẩm')</h2>
                    <ul class="text-left">
                        <li><a href="{{route('f.home')}}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Sản phẩm')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- product-grid-view content section start -->
<section class="pages products-page section-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="sidebar left-sidebar">
                    <div class="s-side-text">
                        <div class="sidebar-title clearfix">
                            <h4 class="floatleft">Bộ lọc</h4>
                            <h5 class="floatright"><a href="#">All</a></h5>
                        </div>
                        <div class="categories left-right-p">
                            <ul id="accordion" class="panel-group clearfix">
                                <li class="panel">
                                    <div data-toggle="collapse" data-parent="#accordion" data-target="#collapse1">
                                        <div class="medium-a">
                                            @lang('Danh mục')
                                        </div>
                                    </div>
                                    <div class="panel-collapse collapse in" id="collapse1">
                                        <div class="normal-a">
                                            @foreach ($category as $item)
                                            <a class="search_category" data-href="{{ route('f.search_category') }}"
                                                data-id="{{($item->id)}}">{{($item->category_name)}}</a>
                                            @endforeach
                                        </div>
                                    </div>
                                </li>
                                <li class="panel">
                                    <div data-toggle="collapse" data-parent="#accordion" data-target="#collapse2">
                                        <div class="medium-a">
                                        @lang('Hãng')
                                        </div>
                                    </div>
                                    <div class="paypal-dsc panel-collapse collapse" id="collapse2">
                                        <div class="normal-a">
                                            @foreach ($brand as $item)
                                            <a class="search_brand" data-href="{{ route('f.search_brand') }}"
                                                data-id="{{($item->id)}}">{{($item->brand_name)}}</a>
                                            @endforeach
                                        </div>
                                    </div>
                                </li>
                                <li class="panel">
                                    <div data-toggle="collapse" data-parent="#accordion" data-target="#collapse3">
                                        <div class="medium-a">
                                            @lang('Nhà cung cấp')
                                        </div>
                                    </div>
                                    <div class="paypal-dsc panel-collapse collapse" id="collapse3">
                                        <div class="normal-a">
                                            @foreach ($provider as $item)
                                            <a class="search_provider" data-href="{{ route('f.search_provider') }}"
                                                data-id="{{($item->id)}}">{{($item->provider_name)}}</a>
                                            @endforeach
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="s-side-text">
                        <div class="sidebar-title">
                            <h4>@lang('Giá')</h4>
                        </div>
                        <div class="range-slider clearfix">
                            <form action="#" method="get">
                                <label><span>@lang('Mức giá từ')</span> <input type="text" id="amount" readonly /></label>
                                <div id="slider-range"></div>
                            </form>
                        </div>
                    </div>
                    <div class="s-side-text">
                        <div class="sidebar-title clearfix">
                            <h4 class="floatleft">color</h4>
                            <h5 class="floatright"><a href="#">All</a></h5>
                        </div>
                        <div class="color-select clearfix">
                            <span></span>
                            <span></span>
                            <span class="outline"></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-xs-12 col-sm-8 col-md-9">
                <div class="right-products">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="section-title clearfix">
                                <ul>
                                    <li>
                                        <ul class="nav-view">
                                            <li class="active"><a data-toggle="tab" href="#grid"> <i
                                                        class="mdi mdi-view-module"></i> </a></li>
                                            <li><a data-toggle="tab" href="#list"> <i class="mdi mdi-view-list"></i>
                                                </a></li>
                                        </ul>
                                    </li>
                                    <li class="sort-by floatright">
                                        Showing 1-9 of 89 Results
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="tab-content grid-content">
                            <div class="tab-pane fade in active text-center" id="grid">
                                <div id="showproduct">
                                    @foreach ($list as $item)
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <div class="single-product">
                                            <div class="product-img">
                                                @if ($item->discount)
                                                <div class="pro-type sell">
                                                    <span>SELL</span>
                                                </div>
                                                @elseif ($item->pro_new)
                                                <div class="pro-type">
                                                    <span>new</span>
                                                </div>
                                                @else
                                                <span></span>
                                                @endif
                                                <a href="#"><img width="200px" height="230px"
                                                        src="{{($item->pro_image)}}" alt="Product Title" /></a>
                                                <div class="actions-btn">
                                                    <a class="addtocart" data-href="{{ route('f.addtocartajax') }}"
                                                        data-id="{{($item->id)}}"><i class="mdi mdi-cart"></i></a>
                                                    <a href="#" data-toggle="modal"
                                                        data-target="#quick-view{{($item->id)}}"><i
                                                            class="mdi mdi-eye"></i></a>
                                                    <a href="#"><i class="mdi mdi-heart"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-dsc">
                                                <p><a href="#">{{($item->product_name)}}</a></p>
                                                <div class="ratting">
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star-half"></i>
                                                    <i class="mdi mdi-star-outline"></i>
                                                </div>
                                                <span>{{number_format($item->price-$item->discount)}}</span>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <!-- single product end -->
                            </div>
                            <div class="tab-pane fade in" id="list">
                                <div class="col-xs-12">
                                    <div id="showproduct">
                                        @foreach ($list as $item)
                                        <!-- single product end -->
                                        <div class="single-list-view">
                                            <div class="row">
                                                <div class="col-xs-12 col-md-4">
                                                    <div class="list-img">
                                                        <div class="product-img">
                                                            @if ($item->discount)
                                                            <div class="pro-type sell">
                                                                <span>SELL</span>
                                                            </div>
                                                            @elseif ($item->pro_new)
                                                            <div class="pro-type">
                                                                <span>new</span>
                                                            </div>
                                                            @else
                                                            <span></span>
                                                            @endif
                                                            <a href="#"><img width="200px" height="230px"
                                                                    src="{{($item->pro_image)}}"
                                                                    alt="Product Title" /></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="list-text">
                                                        <h3 href="{{ route('f.single_product',[$item->id]) }}">
                                                            {{($item->product_name)}}</h3>
                                                        <span>Summer men’s fashion</span>
                                                        <div class="ratting floatright">
                                                            <p>( 27 Rating )</p>
                                                            <i class="mdi mdi-star"></i>
                                                            <i class="mdi mdi-star"></i>
                                                            <i class="mdi mdi-star"></i>
                                                            <i class="mdi mdi-star-half"></i>
                                                            <i class="mdi mdi-star-outline"></i>
                                                        </div>
                                                        <h5>{{number_format($item->price-$item->discount)}}</h5>
                                                        <p>{{($item->title)}}</p>
                                                        <div class="list-btn">
                                                            <a class="addtocart"
                                                                data-href="{{ route('f.addtocartajax') }}"
                                                                data-id="{{($item->id)}}">add to cart</a>
                                                            <a href="#">wishlist</a>
                                                            <a href="#" data-toggle="modal"
                                                                data-target="#quick-view{{($item->id)}}">zoom</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single product end -->
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="pagnation-ul">
                                    <ul class="clearfix">
                                        <li><a href="#"><i class="mdi mdi-menu-left"></i></a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">...</a></li>
                                        <li><a href="#">10</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- product-grid-view content section end -->
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
                                                            @if ($item->discount)
                                                            <div class="pro-type sell">
                                                                <span>SELL</span>
                                                            </div>
                                                            @elseif ($item->pro_new)
                                                            <div class="pro-type">
                                                                <span>new</span>
                                                            </div>
                                                            @else
                                                            <span></span>
                                                            @endif
                                                            <a class="simpleLens-image"
                                                                data-lens-image="{{($item->pro_image)}}" href="#"><img
                                                                    src="{{($item->pro_image)}}" alt=""
                                                                    class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane active fade in"
                                                            id="q-sin-2">
                                                            <div class="pro-type sell">
                                                                <span>sell</span>
                                                            </div>
                                                            <a class="simpleLens-image"
                                                                data-lens-image="{{($item->pro_image)}}" href="#"><img
                                                                    src="{{($item->pro_image)}}" alt=""
                                                                    class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane fade in" id="q-sin-3">
                                                            <div class="pro-type">
                                                                <span>-15%</span>
                                                            </div>
                                                            <a class="simpleLens-image"
                                                                data-lens-image="" href="#"><img
                                                                    src="" alt=""
                                                                    class="simpleLens-big-image"></a>
                                                        </div>
                                                        <div class="simpleLens-container tab-pane fade in" id="q-sin-4">
                                                            <div class="pro-type">
                                                                <span>new</span>
                                                            </div>
                                                            <a class="simpleLens-image"
                                                                data-lens-image="" href="#"><img
                                                                    src="{{($item->pro_image)}}" alt=""
                                                                    class="simpleLens-big-image"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="quick-thumb">
                                                <ul class="product-slider">
                                                    <li><a data-toggle="tab" href="#q-sin-1"> <img
                                                                src="{{($item->pro_image)}}" alt="quick view" /> </a>
                                                    </li>
                                                    <li class="active"><a data-toggle="tab" href="#q-sin-2"> <img
                                                                src="" alt="small image" /> </a></li>
                                                    <li><a data-toggle="tab" href="#q-sin-3"> <img
                                                                src="" alt="small image" /> </a></li>
                                                    <li><a data-toggle="tab" href="#q-sin-4"> <img
                                                                src="" alt="small image" /> </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-8">
                                        <div class="quick-right">
                                            <div class="list-text">
                                                <h3>{{($item->title)}}</h3>
                                                <span> {{($item->id_category)}}</span>
                                                <div class="ratting floatright">
                                                    <p>( 27 Rating )</p>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star"></i>
                                                    <i class="mdi mdi-star-half"></i>
                                                    <i class="mdi mdi-star-outline"></i>
                                                </div>
                                                <h5><del>{{(number_format($item->price))}}</del>
                                                    {{(number_format($item->price-$item->discount))}}</h5>
                                                {{($item->detail)}}
                                                <div class="all-choose">


                                                    <div class="s-shoose">
                                                        <h5>qty</h5>
                                                        <form action="#" method="POST">
                                                            <div class="plus-minus">
                                                                <a class="dec qtybutton">-</a>
                                                                <input type="text" value="02" name="qtybutton"
                                                                    class="plus-minus-box">
                                                                <a class="inc qtybutton">+</a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="list-btn">
                                                    <a class="addtocart" data-href="{{ route('f.addtocartajax') }}"
                                                        data-id="{{($item->id)}}">add to cart</a>
                                                    <a href="#">wishlist</a>
                                                    <a href="#" data-toggle="modal"
                                                        data-target="#quick-view{{($item->id)}}">zoom</a>
                                                </div>
                                                <div class="share-tag clearfix">
                                                    <ul class="blog-share floatleft">
                                                        <li>
                                                            <h5>share </h5>
                                                        </li>
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
<!-- quick view end -->
@endforeach

<!-- quick view end -->
@endsection
