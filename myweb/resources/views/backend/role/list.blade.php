@extends('backend.master')
@section('content')
<div class="card-body">
    <h4 class="card-title">{{$pagename}}</h4>
    <a href="{{route($route.'.create')}}" class="btn btn-sm btn-success float-right"><i class="mdi mdi-plus-box"></i>
        @lang('Thêm mới')</a>
        @if (session('msg'))
    <div class="col-12 alert alert-{{session('status')}}">
        {{session('msg')}}
    </div>
@endif
    <table class="table table-bordered">
        <thead>
            <tr>
                <th> # </th>
                <th>@lang('Mã') </th>
                <th> User name </th>
                <th> @lang('Tên Người Dùng') </th>
                <th> @lang('Hình ảnh') </th>
                {{-- <th> Mật Khẩu </th> --}}
                <th> @lang('Trạng thái') </th>
                <th> @lang('Tác vụ') </th>
            </tr>
        </thead>
        <tbody>
            @foreach ($list as $item)
            <tr>
                <td>1 </td>
                <td> {{$item->id}}</td>
                <td>
                    {{$item->username}}
                </td>
                <td>{{$item->full_name}} </td>
                <td><img src="{{asset($item->image_use)}}" alt=""></td>

                {{-- <td>{{$item->password}} </td> --}}
                <td>

                    @if ($item->status==1)
                    <button type="button" class="btn btn-primary btn-sm">
                        <i class="fa fa-check"></i>
                        @lang('Hiện')</button>
                    @else
                    <button type="button" class="btn btn-danger btn-sm">
                        <i class="fa fa-exclamation">@lang('Ẩn')</i>
                    </button>

                    @endif
                </td>
                <td>
                    <a type="button" href="{{ route($route.'.edit',[$item->id]) }}"
                        class="btn btn-rounded btn-social-outline-facebook">
                        <i class="fa fa-edit" style="font-size:25px"></i>
                    </a>
                    <a type="button" href="{{route($route.'.destroy',[$item->id])}}"
                        class="btn  btn-rounded btn-social-outline-facebook"
                        onclick="return confirm('Bạn Có muón xoá hay không ?')">
                        <i class="	fa fa-trash" style="font-size:25px"></i>
                    </a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $list->links() }}
</div>
@endsection
