@extends('frontend.master')
@section('content')
<!-- pages-title-start -->
<div class="pages-title section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="pages-title-text text-center">
                    <h2>Thông tin thêm</h2>
                    <ul class="text-left">
                        <li><a href="{{route('f.home')}}">@lang('Trang chủ') </a></li>
                        <li><span> // </span>@lang('Thông tin thêm')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- pages-title-end -->
<!-- about-us-section-start -->
<div class="pages about-us section-padding">
    <div class="container">
        <div class="row">
            <div class="main-padding section-padding-top clearfix">
                <div class="col-sm-12 col-md-5">
                    <div class="about-img">
                        <img src="{{('\frontend\img\logo.png')}}" alt="" />
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="about-text">
                        <div class="about-author">
                            <h4>@lang('Thiết bị di động và thông minh') <br /> @lang('Cửa hàng')</h4>
                        </div>
                        <p>@lang('Cửa hàng Moc store được thành lập vào ngày 8/3/2012 với thương hiệu là Moc Store và là Đại lý được ủy quyền chính thức của Apple tại Việt Nam ở cấp độ cao cấp nhất.')</p>
                        <p>@lang('Sau 6 năm hoạt động, bằng những nỗ lực không mệt mỏi, Moc store đã phát triển hệ thống chuỗi cửa hàng rộng khắp trên toàn quốc ở 63 tỉnh thành, tạo dựng được niềm tin nơi Quý khách hàng khi là nhà bán lẻ đứng thứ 1 về thị phần máy tính xách tay tại Việt Nam, đứng thứ 2 về thị phần điện thoại và là nhà bán lẻ Apple chính hãng hàng đầu tại Việt Nam với đầy đủ các chuẩn cửa hàng từ cấp độ cao nhất ') </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about-us section end -->
<section class="pages team-member section-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title text-center">
                    <h3>@lang('Thành viên sáng lập')</h3>
                </div>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="single-member">
                    <div class="member-img">
                        <a href="#"><img src="{{('/frontend/img/about/1.jpg')}}" alt="Team Member" /></a>
                    </div>
                    <div class="share-member">
                        <div class="member-title">
                            <h4>Jonathan Edwards</h4>
                        </div>
                        <div class="member-btn">
                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                            <a href="#"><i class="mdi mdi-twitter"></i></a>
                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                            <a href="#"><i class="mdi mdi-dribbble"></i></a>
                            <a href="#"><i class="mdi mdi-rss"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single member end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="single-member">
                    <div class="member-img">
                        <a href="#"><img src="{{('/frontend/img/about/2.jpg')}}" alt="Team Member" /></a>
                    </div>
                    <div class="share-member">
                        <div class="member-title">
                            <h4>Alex Chao</h4>
                        </div>
                        <div class="member-btn">
                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                            <a href="#"><i class="mdi mdi-twitter"></i></a>
                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                            <a href="#"><i class="mdi mdi-dribbble"></i></a>
                            <a href="#"><i class="mdi mdi-rss"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single member end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="single-member">
                    <div class="member-img">
                        <a href="#"><img src="{{('/frontend/img/about/1.jpg')}}" alt="Team Member" /></a>
                    </div>
                    <div class="share-member">
                        <div class="member-title">
                            <h4>Langx Tran</h4>
                        </div>
                        <div class="member-btn">
                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                            <a href="#"><i class="mdi mdi-twitter"></i></a>
                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                            <a href="#"><i class="mdi mdi-dribbble"></i></a>
                            <a href="#"><i class="mdi mdi-rss"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single member end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="single-member">
                    <div class="member-img">
                        <a href="#"><img src="{{('/frontend/img/about/4.jpg')}}" alt="Team Member" /></a>
                    </div>
                    <div class="share-member">
                        <div class="member-title">
                            <h4>Andy Nguyen</h4>
                        </div>
                        <div class="member-btn">
                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                            <a href="#"><i class="mdi mdi-twitter"></i></a>
                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                            <a href="#"><i class="mdi mdi-dribbble"></i></a>
                            <a href="#"><i class="mdi mdi-rss"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single member end -->
        </div>
    </div>
</section>
@endsection
