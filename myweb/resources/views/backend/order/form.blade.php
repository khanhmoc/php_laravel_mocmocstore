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
                    <label for="">@lang('Tên người nhận')</label>
                    <input type="text" class="form-control" value="{{$item->name_ship??old('name_ship')}}"
                        name="name_ship" id="name_ship" placeholder="@lang('Tên người nhận')">
                    @error('name_ship')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">@lang('Email ship')</label>
                    <input type="text" class="form-control" value="{{$item->email_ship??old('email_ship')}}"
                        name="email_ship" placeholder="@lang('Email ship')">
                    @error('email_ship')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="">@lang('Phone ship')</label>
                <input type="text" class="form-control" value="{{$item->phone_ship??old('phone_ship')}}"
                    name="phone_ship" placeholder="@lang('Phone ship')">
                @error('phone_ship')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror
            </div>
        </div>
        <div class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label for="">@lang('Address ship')</label>
                    <input type="text" class="form-control" value="{{$item->address_ship??old('address_ship')}}"
                        name="address_ship" placeholder="@lang('Address ship')">
                    @error('address_ship')
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
                    <label for="">@lang('Trạng thái đơn')</label>
                    <select name="id_order_status" class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option value="">----@lang('Trạng thái đơn')----</option>
                        @foreach ($status as $i_os)
                        <option @if(isset($item) && $item->id_order_status==$i_os->id) selected @endif
                            value="{{$i_os->id}}">{{$i_os->name}}</option>
                        @endforeach
                    </select>
                    @error('order_status')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
            </div>
        </div>
        @csrf
        @method($method)
        <button type="submit" class="btn btn-success mr-2">Submit</button>
        <a class="btn btn-light" href="{{route('category.index')}}">Cancel</a>
    </form>

    @endsection
