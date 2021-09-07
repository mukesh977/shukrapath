@extends('layouts.backend_app')
@section('title')
Photo Edit
@endsection

@section('content')
<form action="{{ route('backend.photo.update', $photo->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit Photo</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="gallery_categories_id">Gallery Category</label>
                        <select class="form-control" id="gallery_categories_id" name="gallery_categories_id">
                            <option>Select the category below...</option>
                            @foreach ($categories as $item)
                            <option value="{{ $item->id }}" {{ ($item->id == $photo->gallery_category->id)?'selected':'' }}>{{ ucfirst($item->category_name) }}</option>
                            @endforeach
                        </select>
                        @if($errors->has('gallery_categories_id'))
                        <span class="text-danger">
                            Please select the category.
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="category_name">Category Name</label>
                        <input type="file" name="image" accept="image/*" onchange="document.getElementById('image').src = window.URL.createObjectURL(this.files[0])"
                        accept="image/*">
                    <img src="{{ asset(Storage::url($photo->image)) }}" id="image" alt="image.jpeg" class="img-thumbnail" height="100px" width="100px">
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