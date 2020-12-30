@extends('backend.master')
@section('content')


<div class="card-body">
    <h4 class="card-title">{{$pagename}}</h4>

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
    {{-- <p class="card-description"> Basic form elements </p> --}}
    <form class="forms-sample" method="POST" action="{{$action}}">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">Tên Thương hiệu</label>
                    <input type="text" class="form-control" value="{{$item->brand_name??old('brand_name')}}" name="brand_name" id="brand_name"
                        onchange="stralias('brand_name','url')" placeholder="Tên Thương hiệu">
                    @error('brand_name')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">Mô tả</label>
                    <input type="text" class="form-control" value="{{$item->description??old('description')}}" name="description"
                        placeholder="Mô tả">
                    @error('description')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">IMG</label>
                <div class="col-sm-12">
                    <img width="100" src="{{$item->image_brand??''}}" />
                    <input type="hidden" name="image_brand" id="image_brand" value="{{$item->image_brand??old('image_brand')}}"
                        class="form-control">
                    <button class="btn btn-primary" onclick="openfile('image_brand')" type="button">Please choose IMG</button>
                </div>
                @error('image_brand')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
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
            </div>

        </div>
@csrf
@method($method)
<button type="submit" class="btn btn-success mr-2">Submit</button>
<a class="btn btn-light" href="{{route('brand.index')}}">Cancel</a>
</form>
</div>
@endsection
