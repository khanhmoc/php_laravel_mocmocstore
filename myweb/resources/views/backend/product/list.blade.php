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
    <a href="{{route($route.'.create')}}" class="btn btn-sm btn-success float-right"><i class="mdi mdi-plus-box"></i>
        @lang('Thêm mới')</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th> # </th>
                <th> @lang('Mã') </th>
                <th> @lang('Tên sản phẩm') </th>
                <th> @lang('Hình ảnh')</th>
                <th> @lang('Giá') </th>
                <th>@lang('Số lượng')</th>
                <th> @lang('Trạng thái') </th>
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
                    {{$item->product_name}}
                </td>
                <td><img src="{{($item->pro_image)}}" alt=""></td>
                <td>{{$item->price}} </td>
                <td>{{$item->quantity}} </td>
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
                    <a type="button" href="{{ route($route.'.edit',[$item->id]) }}" class="btn  btn-rounded btn-social-outline-facebook">
                        <i class="fa fa-edit" style="font-size:25px"></i>
                    </a>
                    <a type="button" data-href="{{route($route.'.destroy',[$item->id])}}" data-id="{{ $item->id }}" class="xoa_sp"
                        onclick="return confirm('Bạn Có muón xoá hay không ?')">
                        <i class="	fa fa-trash" style="font-size:25px"></i>
                    </a>
                </td>
            </tr>
            @endforeach

        </tbody>
    </table>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(function() {
            $('.xoa_sp').click(function() {
                // alert("moc");
                var url = $(this).data('href');
                var id = $(this).data('id');
                $.ajax({
                    url: url,
                    type: 'DELETE',
                    dataType: "JSON",
                    data: {
                        "id": id // method and token not needed in data
                    },
                    success: function(data) {
                        if (data.result == "Redirect")
                            //toastr.success(data.msg);
                            window.location.href = data.url;
                    }
                });
            });
        })
    </script>
    {{ $list->links() }}
</div>
@endsection
