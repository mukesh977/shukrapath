@extends('layouts.backend_app')
@section('title')
Add Members
@endsection

@section('content')
<form action="{{ route('backend.team.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Team</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="department_id">Department Id</label>
                        <select class="form-control" id="department_id" name="department_id">
                            <option>Select the Department below...</option>
                            @foreach ($departments as $item)
                            <option value="{{ $item->id }}" {{ (old('department_id') == $item->id)?'selected':'' }}>
                                {{ ucfirst($item->department_name) }}</option>
                            @endforeach
                        </select>
                        @if($errors->has('department_id'))
                        <span class="text-danger">
                            Please select the category.
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="full_name">Full Name</label>
                        <input type="text" id="full_name" class="form-control" name="full_name"
                            value="{{ old('full_name')?old('full_name'):'' }}">
                        @if($errors->has('full_name'))
                        <span class="text-danger">
                            {{ $errors->first('full_name') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="designation">Designation</label>
                        <input type="text" id="designation" class="form-control" name="designation"
                            value="{{ old('designation')?old('designation'):'' }}">
                        @if($errors->has('designation'))
                        <span class="text-danger">
                            {{ $errors->first('designation') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="link_to_facebook">Facebook Link</label>
                        <input type="text" id="link_to_facebook" class="form-control" name="link_to_facebook"
                            value="{{ old('link_to_facebook')?old('link_to_facebook'):'' }}">
                        @if($errors->has('link_to_facebook'))
                        <span class="text-danger">
                            {{ $errors->first('link_to_facebook') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="link_to_twitter">Twitter Link</label>
                        <input type="text" id="link_to_twitter" class="form-control" name="link_to_twitter"
                            value="{{ old('link_to_twitter')?old('link_to_twitter'):'' }}">
                        @if($errors->has('link_to_twitter'))
                        <span class="text-danger">
                            {{ $errors->first('link_to_twitter') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="link_to_instagram">Instagram Link</label>
                        <input type="text" id="link_to_instagram" class="form-control" name="link_to_instagram"
                            value="{{ old('link_to_instagram')?old('link_to_instagram'):'' }}">
                        @if($errors->has('link_to_instagram'))
                        <span class="text-danger">
                            {{ $errors->first('link_to_instagram') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="link_to_linkedIn">LinkedIn Link</label>
                        <input type="text" id="link_to_linkedIn" class="form-control" name="link_to_linkedIn"
                            value="{{ old('link_to_linkedIn')?old('link_to_linkedIn'):'' }}">
                        @if($errors->has('link_to_linkedIn'))
                        <span class="text-danger">
                            {{ $errors->first('link_to_linkedIn') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="order">Order</label>
                        <input type="text" id="order" class="form-control" name="order"
                            value="{{ old('order')?old('order'):'' }}">
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
                    <h3 class="card-title">Photo</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Image</label>
                        <img alt="image.jpeg" class="rounded" id="image" height="200px" width="200px">
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <input type="file" name="image"
                        onchange="document.getElementById('image').src = window.URL.createObjectURL(this.files[0])"
                        accept="image/*">
                    @if($errors->has('image'))
                    <span class="text-danger">
                        {{ $errors->first('image') }}
                    </span>
                    @endif
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Publish">
                        <a href="{{ route('backend.team.index') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
<!-- /.row -->
@endsection