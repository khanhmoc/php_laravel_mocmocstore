

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
        @foreach ($chucnang as $cn)

        <li><input type="checkbox" name="" value=""/>{{$cn->role_name}}</label>
        @endforeach
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">Mô tả</label>
                    <input type="text" class="form-control" value="" name="description"
                        placeholder="Mô tả">
                    @error('description')
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
<a class="btn btn-light" href="{{route('role.index')}}">Cancel</a>
</form>
</div>
@endsection

