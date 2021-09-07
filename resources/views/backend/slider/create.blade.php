@extends('layouts.backend_app')
@section('title')
Add Slider
@endsection

@section('content')
<form action="{{ route('backend.slider.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Add Slider</h3>
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
                        <label for="title">Title</label>
                        <input type="text" id="name" class="form-control" name="title"
                            value="{{ old('title')?old('title'):'' }}">
                        @if($errors->has('title'))
                        <span class="text-danger">
                            {{ $errors->first('title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="description">First Paragraph</label>
                        <textarea name="description" id="description">
                            {{ old('description')?old('description'):'' }}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="button_caption">Button Caption/Name</label>
                        <input type="text" id="name" class="form-control" name="button_caption"
                            value="{{ old('button_caption')?old('button_caption'):'' }}">
                        @if($errors->has('button_caption'))
                        <span class="text-danger">
                            {{ $errors->first('button_caption') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="button_link">Button Link</label>
                        <input type="text" id="name" class="form-control" name="button_link"
                            value="{{ old('button_link')?old('button_link'):'' }}">
                        @if($errors->has('button_link'))
                        <span class="text-danger">
                            {{ $errors->first('button_link') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="order">Order</label>
                        <input type="number" id="name" class="form-control" name="order"
                            value="{{ old('order')?old('order'):'' }}">
                            <span class="">Leaving this field empty will automatically set max value.</span>
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
                    <h3 class="card-title">Photo</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Image</label>
                        <img src="{{ asset('frontend/images/youth.png') }}" alt="image.jpeg" class="rounded"
                            id="image" height="200px" width="200px">
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
                        <input type="submit" class="btn btn-primary" value="Add">
                        <a href="{{ route('backend.slider.index') }}" class="btn btn-danger">Close</a>
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
</script>
@endsection