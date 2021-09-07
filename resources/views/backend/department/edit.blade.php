@extends('layouts.backend_app')
@section('title')
Edit Department
@endsection

@section('content')
<div class="content">
    <div class="container-fluid">
        <form action="{{ route('backend.department.update', $department->id) }}" method="post">
            @csrf
            @method('put')
            <div class="row">
                <div class="col-md-9">
                    <div class="card card-primary card-tabs">
                        <div class="card-header">
                            <h3 class="card-title">Department</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="department_name">Department Name</label>
                                <input type="text" id="department_name" class="form-control" name="department_name"
                                    value="{{ old('department_name')?old('department_name'):$department->department_name }}">
                                @if($errors->has('department_name'))
                                <span class="text-danger">
                                    {{ $errors->first('department_name') }}
                                </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="order">Order</label>
                                <input type="text" id="order" class="form-control" name="order"
                                    value="{{ old('order')?old('order'):$department->order }}">
                                <span class="text-muted">
                                    Leaving this field empty will automatically set last value.
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
                            <h3 class="card-title">Action</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Publish">
                                <a href="{{ route('backend.department.index') }}" class="btn btn-danger">Close</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </form>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
@endsection

@section('script')
<script>
    CKEDITOR.replace( 'description' );
</script>
@endsection