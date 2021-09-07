@extends('layouts.backend_app')
@section('title')
Add Branch
@endsection

@section('content')
<form action="{{ route('backend.branch.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Add Branch</h3>
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
                        <label for="title">Branch Name</label>
                        <input type="text" id="name" class="form-control" name="title"
                            value="{{ old('title')?old('title'):'' }}" required>
                        @if($errors->has('title'))
                        <span class="text-danger">
                            {{ $errors->first('title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="email">Branch Email</label>
                        <input type="email" id="name" class="form-control" name="email"
                            value="{{ old('email')?old('email'):'' }}">
                    </div>
                    <div class="form-group">
                        <label for="address">Branch Address</label>
                        <input type="text" id="name" class="form-control" name="address"
                            value="{{ old('address')?old('address'):'' }}">
                    </div>
                    <div class="form-group">
                        <label for="phone_no">Branch Phone Number</label>
                        <input type="text" id="name" class="form-control" name="phone_no"
                            value="{{ old('phone_no')?old('phone_no'):'' }}">
                    </div>
                    <div class="form-group">
                        <label for="order">Order</label>
                        <input type="text" id="name" class="form-control" name="order"
                            value="{{ old('order')?old('order'):'' }}">
                        <span class="text-muted">
                            Leaving this field empty will automatically set order to last.
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

        <div class=" col-md-3">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Action</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Add">
                        <a href="{{ route('backend.branch.index') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
<!-- /.row -->
@endsection

@section('script')
<script>
    CKEDITOR.replace( 'description');
    CKEDITOR.replace( 'second_description');
</script>
@endsection