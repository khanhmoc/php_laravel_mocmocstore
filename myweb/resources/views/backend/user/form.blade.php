@extends('backend.master')
@section('content')
<div class="card">
    <div class="card-body">
        <h4 class="card-title">{{($pagename ?? 'Dữ liệu chưa qua')}}</h4>
        <p class="card-description">
            @if (session('msg'))
            <div class="col-12 alert alert-{{session('status')}}">
                {{session('msg')}}
            </div>
            @endif
            @if($errors->any())
            <div class="col-12 alert alert-danger">
                @foreach ($errors->all() as $er)
                {{$er}}<br>
                @endforeach
            </div>
            @endif
        </p>
        <form class="forms-sample" method="POST" action="{{$action}}">

            <div class="form-group">
                <label for="">Tên Người dùng</label>
                <input type="text" class="form-control" value="{{($item->full_name ??old('full_name'))}}" name="full_name"
                    placeholder="Tên Người dùng">
                    @error('full_name')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
            </div>
            <div class="form-group">
                <label for="">Tên đăng nhập</label>
                <input type="text" class="form-control" value="{{($item->username ??old('username'))}}" name="username"
                    placeholder="Tên đăng nhập(username)">
                    @error('username')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
            </div>
            <div class="form-group">
                <label for="">Password</label>
                <input type="password" class="form-control" value="{{($item->password ?? old('password'))}}" name="password"
                    placeholder="Password">
                    @error('password')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Trạng thái</label>
                <div class="col-sm-4">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="status" id="membershipRadios1"
                                @if(isset($item) && $item->status!=1) checked @endif value="0" checked=""> Ẩn <i
                                class="input-helper"></i></label>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="status" id="membershipRadios2"
                                @if(isset($item) && $item->status==1) checked @endif value="1"> Hiện <i
                                class="input-helper"></i></label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">IMG</label>
                <div class="col-sm-12">
                <img width="100" src="{{$item->image_use??''}}"/>
                    <input type="hidden" name="image_use" id="image_use" value="{{$item->image_use??old('image_use')}}"
                        class="form-control">
                        <button class="btn btn-primary" onclick="openfile('image_use')" type="button">Please choose IMG</button>
                </div>
                @error('image_use')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
            {{-- <div class="form-group">
                <img src="{{($item->image_use??'public/img/noimg.jpg')}}?" width="100" />
                <label for="fimage_use">Hình</label>
                <input type="file" name="fimage_use" id="fimage_use" class="form-control" value="" placeholder=""
                    aria-describedby="helpId">
                <input type="hidden" name="image_usecu" id="image_usecu" value="">
            </div> --}}
            @csrf
            @method($method)
            <button type="submit" class="btn btn-primary mr-2">Submit</button>
            <a class="btn btn-light" href="{{route('user.index')}}">Cancel</a>
        </form>
    </div>
</div>
@endsection
