@extends('backend.master')
@section('content')
<div class="card-body">
    <h4 class="card-title">{{$pagename}}</h4>
    <div>
        @if (session('msg'))
        <div class="col-12 alert alert-{{session('status')}}">
            {{session('msg')}}
        </div>
        @endif
    </div>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th> # </th>
                <th> @lang('Mã Đơn hàng') </th>
                <th> CODE </th>
                <th> @lang('Phương thức thanh toán')</th>
                <th>@lang('Tình trạng đơn hàng') </th>
                <th> @lang('Tên khách hàng') </th>
                <th> @lang('Thành tiền') </th>
                <th> @lang('Tác vụ') </th>
            </tr>
        </thead>
        <tbody>
        {{$count=1}}
            @foreach ($list as $item)

            <tr>
                <td>{{$count++}} </td>
                <td> {{$item->id}}</td>
                <td>
                    {{$item->code}}
                </td>
                <td>{{$item->payment_method}}</td>
                <td>@if ($item->status==1)
                    <button type="button" class="btn btn-primary btn-sm">
                        <i class="fa fa-check"></i>
                        chờ duyệt</button>
                    @else
                    <button type="button" class="btn btn-danger btn-sm">
                        <i class="fa fa-exclamation">Đã xong</i>
                    </button>
                    @endif </td>
                <td>{{$item->name_bill}} </td>
                <td>{{number_format($item->total)}} </td>
                <td>
                    <a type="button" href="{{ route($route.'.edit',[$item->id]) }}" class="btn  btn-rounded btn-social-outline-facebook">
                        <i class="fa fa-edit" style="font-size:25px"></i>
                    </a>
                    <a type="button"href="{{route($route.'.destroy',[$item->id])}}" class="btn  btn-rounded btn-social-outline-facebook"
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
