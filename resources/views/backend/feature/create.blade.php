@extends('layouts.backend_app')
@section('title')
Add Feature
@endsection

@section('content')
<form action="{{ route('backend.feature.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Add Feature</h3>
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
                        <label for="title">Feature Title</label>
                        <input type="text" id="name" class="form-control" name="title"
                            value="{{ old('title')?old('title'):'' }}" required>
                        @if($errors->has('title'))
                        <span class="text-danger">
                            {{ $errors->first('title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="description">First Description</label>
                        <textarea name="description" id="description">
                            {{ old('description')?old('description'):'' }}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="subtitle">Subtitle</label>
                        <input type="text" id="name" class="form-control" name="subtitle"
                            value="{{ old('subtitle')?old('subtitle'):'' }}">
                    </div>
                    <div class="form-group">
                        <label for="second_description">Second Description</label>
                        <textarea name="second_description" id="second_description">
                            {{ old('second_description')?old('second_description'):'' }}
                        </textarea>
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
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Search Engine Optimization</h3>
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
                        <label for="seo_title">SEO Title</label>
                        <input type="text" id="name" class="form-control" name="seo_title"
                            value="{{ old('seo_title')?old('seo_title'):'' }}">
                    </div>
                    <div class="form-group">
                        <label for="seo_keyword">SEO Keyword</label>
                        <textarea name="seo_keyword" id="seo_keyword" class="form-control"
                            rows="2">{{ old('seo_keyword')?old('seo_keyword'):'' }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="seo_description">News Title</label>
                        <textarea name="seo_description" id="seo_description" class="form-control"
                            rows="2">{{ old('seo_description')?old('seo_description'):'' }}</textarea>
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
                        <label>Cover Image</label>
                        <img src="{{ asset('frontend/images/youth.png') }}" alt="image.jpeg" class="rounded"
                            id="cover_image" height="200px" width="200px">
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <input type="file" name="cover_image"
                        onchange="document.getElementById('cover_image').src = window.URL.createObjectURL(this.files[0])"
                        accept="image/*">
                    @if($errors->has('cover_image'))
                    <span class="text-danger">
                        {{ $errors->first('cover_image') }}
                    </span>
                    @endif
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Featured News Image</label>
                        <img src="{{ asset('frontend/images/youth.png') }}" alt="image.jpeg" class="rounded"
                            id="featured_image" height="200px" width="200px">
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <input type="file" name="featured_image"
                        onchange="document.getElementById('featured_image').src = window.URL.createObjectURL(this.files[0])"
                        accept="image/*">
                    @if($errors->has('featured_image'))
                    <span class="text-danger">
                        {{ $errors->first('featured_image') }}
                    </span>
                    @endif
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Add">
                        <a href="{{ route('backend.feature.index') }}" class="btn btn-danger">Close</a>
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