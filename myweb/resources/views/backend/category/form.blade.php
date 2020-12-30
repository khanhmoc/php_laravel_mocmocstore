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
                    <label for="">Tên Danh mục</label>
                    <input type="text" class="form-control" value="{{$item->category_name??old('category_name')}}" name="category_name" id="category_name"
                     placeholder="Tên Danh mục">
                    @error('category_name')
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
                    <img width="100" src="{{$item->image_category??''}}" />
                    <input type="hidden" name="image_category" id="image_category" value="{{$item->image_category??old('image_category')}}"
                        class="form-control">
                    <button class="btn btn-primary" onclick="openfile('image_category')" type="button">Please choose IMG</button>
                </div>
                @error('image_category')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
        </div>
        <div class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label for="">Mã cha</label>
                    <input type="number" class="form-control" value="{{$item->parent_id??old('parent_id')}}" name="parent_id"
                        placeholder="Mã cha">
                    @error('parent_id')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
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


        {{-- <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="ma_danh mục">Danh Mục</label>
                    <select name="ma_danh_muc" class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option value="">----Chọn Sản Danh Mục----</option>
                        @foreach ($danhmuc as $i_danhmuc)
                        <option @if(isset($item) && $item->ma_danh_muc==$i_danhmuc->ma) selected @endif
                            value="{{$i_danhmuc->ma}}">{{$i_danhmuc->category_name}}</option>
        @endforeach
        </select>
        @error('ma_danh_muc')
        <div class="text-danger">
            {{$message}}
        </div>
        @enderror
</div>
</div> --}}

{{-- <div class="form-group">
        <label>File upload</label>
        <input type="file" name="img[]" class="file-upload-default">
        <div class="input-group col-xs-12">
          <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">
          <span class="input-group-append">
            <button class="file-upload-browse btn btn-info" type="button">Upload</button>
          </span>
        </div>
      </div> --}}
@csrf
@method($method)
<button type="submit" class="btn btn-success mr-2">Submit</button>
<a class="btn btn-light" href="{{route('category.index')}}">Cancel</a>
</form>
</div>
@endsection
