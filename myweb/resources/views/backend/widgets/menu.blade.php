<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{{route('b.dashboard')}}">
                <i class="ti-shield menu-icon"></i>

                <span class="menu-title">@lang('Trang chủ')</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false"
                aria-controls="ui-basic">
                <i class="ti-palette menu-icon"></i>
                <span class="menu-title">@lang('Sản phẩm')</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('product')}}">@lang('Danh sách')</a></li>
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('product/create')}}">@lang('Thêm mới')</a></li>
                </ul>
            </div>
        </li>

        {{-- <li class="nav-item">
            <a class="nav-link" href="pages/forms/basic_elements.html">
                <i class="ti-layout-list-post menu-icon"></i>
                <span class="menu-title">Form elements</span>
            </a>
        </li> --}}
        <li class="nav-item">
            {{-- <a class="nav-link" href="{{('user')}}">
                <i class="ti-pie-chart menu-icon"></i>
                <span class="menu-title">User</span>
            </a> --}}
            <a class="nav-link" data-toggle="collapse" href="#authuser" aria-expanded="false"
            aria-controls="authuser">
            <i class="ti-user menu-icon"></i>
            <span class="menu-title">User </span>
            <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="authuser">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="{{('user')}}"> @lang('Danh sách') </a>
                </li>
                <li class="nav-item"> <a class="nav-link" href="{{('user/create')}}">@lang('Thêm mới')
                    </a></li>
            </ul>
        </div>

        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#category" aria-expanded="false"
                aria-controls="ui-basic">
                <i class="ti-palette menu-icon"></i>
                <span class="menu-title">@lang('Danh mục')</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="category">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('category')}}">@lang('Danh sách')</a></li>
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('category/create')}}">@lang('Thêm mới')</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ncc" aria-expanded="false"
                aria-controls="ui-basic">
                <i class="ti-palette menu-icon"></i>
                <span class="menu-title">@lang('Nhà cung cấp')</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ncc">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('provider')}}">@lang('Danh sách')</a></li>
                    <li class="nav-item"> <a class="nav-link"
                            href="{{('provider/create')}}">@lang('Thêm mới')</a></li>
                </ul>
            </div>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#brand" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="ti-palette menu-icon"></i>
                    <span class="menu-title">@lang('Thương hiệu')</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="brand">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link"
                                href="{{('brand')}}">@lang('Danh sách')</a></li>
                        <li class="nav-item"> <a class="nav-link"
                                href="{{('brand/create')}}">@lang('Thêm mới')</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#order" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="ti-palette menu-icon"></i>
                    <span class="menu-title">@lang('Quản lý đơn hàng')</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="order">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link"
                                href="{{('order')}}">@lang('Danh sách')</a></li>

                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#role" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="ti-palette menu-icon"></i>
                    <span class="menu-title">@lang('Phân quyền')</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="role">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link"
                                href="{{('role')}}">@lang('Danh sách')</a></li>
                        <li class="nav-item"> <a class="nav-link"
                                href="{{('role/create')}}">@lang('Thêm mới')</a></li>
                    </ul>
                </div>
            </li>

        </li>
    </ul>
</nav>
