<footer>
    <!-- quick view end -->
    <!-- footer section start -->
    <footer class="footer-two">
        <!-- brand logo area start -->
        <div class="brand-logo">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="barnd-bg">
                            <a href="#"><img
                                    src="{{('\frontend\img\brand\1.png')}}"
                                    alt="Brand Logo" /></a>
                            <a href="#"><img
                                    src="{{('\frontend\img\brand\2.png')}}"
                                    alt="Brand Logo" /></a>
                            <a href="#"><img
                                    src="{{('\frontend\img\brand\3.png')}}"
                                    alt="Brand Logo" /></a>
                            <a href="#"><img
                                    src="{{('\frontend\img\brand\4.png')}}"
                                    alt="Brand Logo" /></a>
                            <a href="#"><img src="{{('\frontend\img\brand\5.png')}}" alt="Brand Logo" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brand logo section end -->
        <!-- social media section start -->
        <div class="social-media section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="newsletter newsletter2">
                            <h3>newsletter</h3>
                            <form action="mail.php" method="post">
                                <input type="text" name="email" placeholder="Enter your email..." />
                                <input type="submit" value="subscribe" />
                            </form>
                        </div>
                        <div class="social-icons">
                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                            <a href="#"><i class="mdi mdi-twitter"></i></a>
                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                            <a href="#"><i class="mdi mdi-dribbble"></i></a>
                            <a href="#"><i class="mdi mdi-rss"></i></a>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-offset-1 col-md-5">
                        <div class="newsletter get-touch">
                            <h3>@lang('Liên hệ')</h3>
                            <form action="{{route('f.f2')}}" method="post">
                                {{-- <input type="text" name="name"  placeholder="Tên bạn..." /> --}}
                                <input type="text" name="email" value="duykhanh2799@gmail.com" placeholder="Email của bạn email..." />
                                <div style="margin-bottom: 20px" class="space40"> <select name="type" required="" class="form-control">
                                        <option value="">--- Chọn chủ đề liên hệ ---</option>
                                        <option value="Cần tư vấn mua hàng">Cần tư vấn mua hàng</option>
                                        <option value="Hỏi về tình trạng đơn hàng">Hỏi về tình trạng đơn hàng</option>
                                        <option value="Phàn nàn dịch vụ">Phàn nàn dịch vụ</option>
                                        <option value="Chủ đề khác">Chủ đề khác</option>
                                    </select> </div>

                                <textarea name="message" rows="2" placeholder="Nội dung liên hệ...."></textarea>
                                @csrf
                                <input type="submit" value="Gửi" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- <script>
        .footer-two .social-media {background: url(img/footer/bg3.jpg)no-repeat ;padding-top:80px;}
    </script> --}}
        <!-- social media section end -->
        <!-- footer-top area start -->
        <div class="footer-top section-padding">
            <div class="footer-dsc">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="single-text">
                                <div class="footer-title">
                                    <h4>@lang('Liên hệ')</h4>
                                </div>
                                <div class="footer-text">
                                    <ul>
                                        <li>
                                            <i class="mdi mdi-map-marker"></i>
                                            <p> @lang('302 Trần Đình Xu , phường Nguyễn Cư Trinh, Quận 1, TP.HCM')</p>
                                        </li>
                                        <li>
                                            <i class="mdi mdi-phone"></i>
                                            <p>(+84) 352902397</p>
                                            <p>(+84) 345403998</p>
                                        </li>
                                        <li>
                                            <i class="mdi mdi-email"></i>
                                            <p>duykhanh2799@outlook.com</p>
                                            <p>mocstore@email.com</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-3 wide-mobile">
                            <div class="single-text">
                                <div class="footer-title">
                                    <h4>@lang('TàI KHOẢN')</h4>
                                </div>
                                <div class="footer-menu">
                                    <ul>
                                        <li><a href="login.html"><i class="mdi mdi-menu-right"></i>@lang('Quản lý tài khoản') </a></li>
                                        <li><a href="wishlist.html"><i class="mdi mdi-menu-right"></i>@lang('Sản phẩm yêu thích')</a></li>
                                        <li><a href="cart.html"><i class="mdi mdi-menu-right"></i>@lang('Giỏ hàng')</a></li>
                                        <li><a href="login.html"><i class="mdi mdi-menu-right"></i>@lang('Đăng nhập')</a></li>
                                        <li><a href="checkout.html"><i class="mdi mdi-menu-right"></i>@lang('Thanh toán')</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 wide-mobile">
                            <div class="single-text">
                                <div class="footer-title">
                                    <h4>@lang('Giao hàng')</h4>
                                </div>
                                <div class="footer-menu">
                                    <ul>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>Lalamove</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('Giao hàng tiết kiệm')</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>Viettel post</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('Giao hàng nhanh')</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 r-margin-top wide-mobile">
                            <div class="single-text">
                                <div class="footer-title">
                                    <h4>@lang('THÔNG TIN')</h4>
                                </div>
                                <div class="footer-menu">
                                    <ul>
                                        <li><a href="contact.html"><i class="mdi mdi-menu-right"></i>@lang('Đổi trả hàng') </a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('Mua hàng trực tuyến')</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('Chính sách thanh toán')</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('Hướng dẫn vận chuyển')</a></li>
                                        <li><a href="#"><i class="mdi mdi-menu-right"></i>@lang('GIAO HÀNG TẬN NƠI')</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- footer-top area end -->
        <!-- footer-bottom area start -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <p>&copy; Mocstore . @lang('Đã đăng ký Bản quyền.')</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 text-right">
                        <a href="#"><img src="" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area end -->
    </footer>
