<header class="header-one">
    <div class="container-fluid text-center">
        <div class="row">
            <div class="col-sm-2">
                <div class="logo">
                    <a href="{{route('f.home')}}"><img src="{{('\frontend\img\logo.png')}}" alt="Mocstore" /></a>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="header-middel">
                    <div class="middel-top clearfix">
                        <div class="left floatleft">
                            <p><i class="mdi mdi-clock"></i> {{(date('d-m-Y s:i:H'))}}</p>
                        </div>
                        <div class="center floatleft">
                            <form action="{{ route('f.search_product') }}" method="post">
                                <button type="submit"><i class="mdi mdi-magnify"></i></button>
                                <input type="text" placeholder="@lang('Nhập từ khoá muốn tìm kiếm ...')" />
                            </form>
                        </div>
                        <div class="right floatleft">
                            <ul class="clearfix">
                                <li><a href="#">@lang('Ngôn ngữ')</i></a>
                                    <ul>
                                        <li><a href="{{route('f.translate',['vi'])}}"><img src="{{('\frontend\img\lang\viet.jpg')}}"  alt=""></a></li>
                                        <li><a href="{{route('f.translate',['en'])}}"><img src="{{('\frontend\img\lang\anh.jpg')}}"  alt=""></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><i class="mdi mdi-settings"></i></a>
                                    <ul>
                                        <li><a href="{{route('user.index')}}">@lang('Tài khoản')</a></li>
                                        <li><a href="{{route('f.cart')}}">@lang('Giỏ hàng')</a>
                                        </li>
                                        {{-- <li><a href="wishlist.html">Yêu thích</a></li> --}}
                                        {{-- <li><a href="checkout.html">Đăng xuất</a></li> --}}
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="{{route('f.home')}}">@lang('Trang chủ')</a>
                                    {{-- <ul class="dropdown">
                                        <li><a href="index.html">Home version one</a></li>
                                        <li><a href="index-2.html">Home version two</a></li>
                                    </ul> --}}
                                </li>

                                <li><a href="{{route('f.product')}}"> @lang('Sản phẩm')</a>
                                </li>
                                <li><a href="{{route('f.cart')}}">@lang('Giỏ hàng')</a></li>
                                <li><a href="{{route('f.about')}}">@lang('Thông tin thêm')</a></li>
                                <li><a href="{{route('f.contact')}}">@lang('Liên hệ') </a></li>
                                <li><a href="{{route('f.checkout')}}">@lang('Thanh toán') </a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- mobile menu start -->
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="{{route('f.home')}}">@lang('Trang chủ')</a>

                                    </li>
                                    <li><a href="{{route('f.product')}}"> @lang('Sản phẩm')</a>

                                    </li>
                                    <li><a href="{{route('f.cart')}}">@lang('Giỏ hàng')</a></li>
                                    <li><a href="{{route('f.about')}}">@lang('Thông tin thêm')</a></li>
                                <li><a href="{{route('f.contact')}}">@lang('Liên hệ') </a></li>
                                <li><a href="{{route('f.checkout')}}">@lang('Thanh toán') </a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="cart-itmes">
                    <a class="cart-itme-a" href="cart.html">
                        <i class="mdi mdi-cart" id="item-count"></i>
                        <span id="item-count"> {{$count??''}} @lang('Sản phẩm')  </span>
                        {{-- @if (isset($total))
                        <strong id="total_mes">
                            {{number_format($total)}}
                        </strong>
                        @else
                        <strong id="total_mes">
                            0 VND
                        </strong>
                        @endif --}}

                    </a>
                    <div class="cartdrop" id="cartmini">
                        <a class="goto" href="{{ route('f.cart') }}">@lang('Giỏ hàng')</a>
                        <a class="out-menu" href="{{ route('f.checkout') }}">@lang('Thanh toán')</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
