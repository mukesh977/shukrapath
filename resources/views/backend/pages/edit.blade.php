@extends('layouts.backend_app')
@section('title')
Edit Pages
@endsection

@section('content')
<form action="{{ route('backend.page.update', $page->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit Page</h3>
                </div>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                        <i class="fas fa-minus"></i></button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                        title="Remove">
                        <i class="fas fa-times"></i></button>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="page_title">Page Title</label>
                        <input type="text" id="page_title" class="form-control" name="page_title"
                            value="{{ old('page_title')?old('page_title'):$page->page_title }}">
                        @if($errors->has('page_title'))
                        <span class="text-danger">
                            {{ $errors->first('page_title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea name="description" id="description" class="form-control">
                                    {{ old('description')?old('description'):$page->description }}
                                </textarea>
                        @if($errors->has('description'))
                        <span class="text-danger">
                            {{ $errors->first('description') }}
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
                            value="{{ old('seo_title')?old('seo_title'):$page->seo_title }}">
                    </div>
                    <div class="form-group">
                        <label for="seo_keyword">SEO Keyword</label>
                        <textarea name="seo_keyword" id="seo_keyword" class="form-control"
                            rows="2">{{ old('seo_keyword')?old('seo_keyword'):$page->seo_keyword }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="seo_description">News Title</label>
                        <textarea name="seo_description" id="seo_description" class="form-control"
                            rows="2">{{ old('seo_description')?old('seo_description'):$page->seo_description }}</textarea>
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
                        <label>Featured Image</label>
                        <img src="{{ asset(Storage::url($page->featured_image)) }}" alt="banner_image.jpeg"
                            class="rounded" id="featured_image" height="200px" width="200px">
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
                        <input type="submit" class="btn btn-primary" value="Publish">
                        <a href="{{ route('backend.page.index') }}" class="btn btn-danger">Close</a>
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
    CKEDITOR.replace( 'description' );
</script>
@endsection