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
                    <label for="">@lang('Tên sản phẩm')</label>
                    <input type="text" class="form-control"
                    onchange="stralias('product_name','name_url')" value="{{$item->product_name??old('product_name')}}"
                        name="product_name" id="product_name" placeholder="Tên Sản Phẩm">
                    @error('product_name')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">URL</label>
                <div class="col-sm-12">
                    <input type="text" name="name_url" id="name_url"
                        value="{{$item->name_url??old('name_url')}}" class="form-control">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">@lang('Giá')</label>
                    <input type="text" class="form-control" value="{{$item->price??old('price')}}" name="price"
                        placeholder="@lang('Giá')">
                    @error('price')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">@lang('Số Lượng')</label>
                    <input type="number" class="form-control" value="{{$item->quantity??old('quantity')}}"
                        name="quantity" placeholder="@lang('Số Lượng')">
                    @error('quantity')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label">IMG</label>
                    <div class="col-sm-12">
                    <img width="100" src="{{$item->pro_image??''}}"/>
                        <input type="hidden" name="pro_image" id="pro_image" value="{{$item->pro_image??old('pro_image')}}"
                            class="form-control">
                            <button class="btn btn-primary" onclick="openfile('pro_image')" type="button">Please choose IMG</button>
                    </div>
                    @error('pro_image')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">Description</label>
                    <input type="text" class="form-control" value="{{$item->description??old('description')}}" name="description"
                        placeholder="Description">
                    @error('description')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label">Detail</label>
                    <div class="col-sm-12">
                        <textarea rows="5" name="detail" id="detail"
                            class="form-control">{{$item->detail??old('detail')}}</textarea>
                            <script>
                                CKEDITOR.replace('detail')
                            </script>
                    </div>
                </div>
                @error('detail')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Status</label>
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
            <div class="col-md-6">
                <div class="form-group">
                    <label for="title">Title </label>
                    <input type="text" class="form-control" value="{{$item->title??old('title')}}" name="title"
                        placeholder="Title">
                    @error('title')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="keyword">Key Word </label>
                    <input type="text" class="form-control" value="{{$item->keyword??old('keyword')}}" name="keyword"
                        placeholder="Key Word">
                </div>
                @error('keyword')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="seo">SEO </label>
                    <input type="text" class="form-control" value="{{$item->seo??old('seo')}}"
                        name="seo" placeholder="Description tìm kiếm">
                    @error('seo')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="ma_danh mục">Category</label>
                    <select name="id_category" class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option value="">----Choose Category----</option>
                        @foreach ($category as $i_danhmuc)
                        <option @if(isset($item) && $item->id_category==$i_danhmuc->id) selected @endif
                            value="{{$i_danhmuc->id}}">{{$i_danhmuc->category_name}}</option>
                        @endforeach
                    </select>
                    @error('id_category')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="id_brand">Brand</label>
                    <select name="id_brand" class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option value="">----Choose Brand----</option>
                        @foreach ($brand as $i_thuonghieu)
                        <option @if(isset($item) && $item->id_brand==$i_thuonghieu->id) selected @endif
                            value="{{$i_thuonghieu->id}}">{{$i_thuonghieu->brand_name}}</option>
                        @endforeach
                    </select>
                    @error('id_brand')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="id_provider">Provider</label>
                    <select name="id_provider" class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option value="">----Choose Provider----</option>
                        @foreach ($provider as $i_ncc)
                        <option @if(isset($item) && $item->id_provider==$i_ncc->id) selected @endif
                            value="{{$i_ncc->id}}">{{$i_ncc->provider_name}}</option>
                        @endforeach
                    </select>
                    @error('id_provider')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
            </div>

            @csrf
            @method($method)
            <button type="submit" class="btn btn-success mr-2">Submit</button>
            <a class="btn btn-light" href="{{route('product.index')}}">Cancel</a>
    </form>
</div>
@endsection
