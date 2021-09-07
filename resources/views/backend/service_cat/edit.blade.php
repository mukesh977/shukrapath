@extends('layouts.backend_app')
@section('title')
Edit Service Category
@endsection

@section('content')
<form action="{{ route('backend.service-category.update', $serviceCategory->id) }}" method="post"
    enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit Service Category</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                            title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="name">Category Name</label>
                        <input type="text" id="name" class="form-control" name="name"
                            value="{{ old('name')?old('name'):$serviceCategory->name }}">
                        @if($errors->has('name'))
                        <span class="text-danger">
                            {{ $errors->first('name') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="order">Order</label>
                        <input type="text" id="order" class="form-control" name="order"
                            value="{{ old('order')?old('order'):$serviceCategory->order }}">
                        <span class="text-muted">
                            Leaving this field empty gives
                        </span>
                        @if($errors->has('order'))
                        <span class="text-danger">
                            {{ $errors->first('order') }}
                        </span>
                        @endif
                    </div>
                </div>
                <!-- /.card -->
            </div>

        </div>

        <div class="col-md-3">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Photo</h3>
                </div>

                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Update">
                        <a href="{{ route('backend.service-category.index') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
<!-- /.row -->
@endsection