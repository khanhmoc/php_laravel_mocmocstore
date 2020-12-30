<!doctype html>
<html class="no-js" lang="">
    @include('frontend.widgets.head')
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- header section start -->
@include('frontend.widgets.menu')
        <!-- header section end -->
        <!-- slider-section-start -->
        @yield('content')

		<!-- quick view end -->
        <!-- footer section start -->
        @include('frontend.widgets.footer')
        <!-- footer section end -->

		<!-- all js here -->
@include('frontend.widgets.js')
    </body>
</html>
