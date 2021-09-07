@extends('layouts.backend_app')
@section('title')
Category Edit
@endsection

@section('content')
<form action="{{ route('backend.album.update', $gallery_category->id) }}" method="post"
    enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit Album</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="category_name">Category Name</label>
                        <input type="text" id="category_name" class="form-control" name="category_name"
                            value="{{ old('category_name')?old('category_name'):$gallery_category->category_name }}">
                        @if($errors->has('category_name'))
                        <span class="text-danger">
                            {{ $errors->first('category_name') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="order">Order</label>
                        <input type="text" id="order" class="form-control" name="order"
                            value="{{ old('order')?old('order'):$gallery_category->order }}">
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
                    <h3 class="card-title">Photos</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Image</label>
                        <img src="{{ asset(Storage::url($gallery_category->thumbnail_image)) }}"
                            alt="thumbnail_image.jpeg" class="rounded" id="thumbnail_image" height="200px"
                            width="200px">
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <input type="file" name="thumbnail_image"
                        onchange="document.getElementById('thumbnail_image').src = window.URL.createObjectURL(this.files[0])"
                        accept="image/*">
                    @if($errors->has('thumbnail_image'))
                    <span class="text-danger">
                        {{ $errors->first('thumbnail_image') }}
                    </span>
                    @endif
                </div>

                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Update">
                        <a href="{{ route('backend.album.index') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
@endsection
@section('script')
<script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>

<script>
    CKEDITOR.replace( 'description' );
</script>
@endsection