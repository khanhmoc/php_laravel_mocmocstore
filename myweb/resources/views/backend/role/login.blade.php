@extends('backend.empty')
@section('content')


    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="{{asset('backend/images/logo.svg')}}" alt="logo">
              </div>
              <h4>Xin Chào mời bạn nhập tài khoản và mật khẩu</h4>
              <h6 class="font-weight-light">Đăng nhập để tiếp tục</h6>

              @if (session('msg'))
              <div class="col-12 alert alert-{{session('status')}}">
                  {{session('msg')}}
              </div>
          @endif
          <form method="post" action="{{route('b.loginpost')}}" class="needs-validation" novalidate>
                <div class="form-group">
                  <label>Tên đang nhập *</label>
                  <input type="text" required name="username" class="form-control p_input @error('username') is-invalid @endif ">
                  @error('username')
                    <div class="invalid-feedback">
                        {{$message}}
                        </div>
                    @enderror
                </div>
                <div class="form-group">
                  <label>Mật khẩu *</label>
                  <input type="text" required name="password" class="form-control p_input  @error('password') is-invalid @endif ">
                  @error('password')
                  <div class="invalid-feedback">
                      {{$message}}
                      </div>
                  @enderror
                </div>
                <div class="form-group d-flex align-items-center justify-content-between">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" value="1" name="remember" class="form-check-input"> Nhớ đăng nhập</label>
                  </div>
                </div>
                <div class="text-center">
                    @csrf
                  <button type="submit" class="btn btn-primary btn-block enter-btn">Đăng nhập</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  @endsection
