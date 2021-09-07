@extends('layouts.backend_app')
@section('title')
Edit Slider
@endsection

@section('content')
<div class="content">
    <div class="container-fluid">
        <form action="{{ route('backend.homepage.update', $homepage->id) }}" method="post"
            enctype="multipart/form-data">
            @csrf
            @method('put')
            <div class="row">
                <div class="col-md-9">
                    {{-- <div class="card card-primary card-tabs">
                        <div class="card-header">
                            <h3 class="card-title">Slider</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                    data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"
                                    data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input type="text" id="title" class="form-control" name="title"
                                    value="{{ old('title')?old('title'):$homepage->title }}">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea name="description" id="description" class="form-control">
                                    {{ old('description')?old('description'):$homepage->description }}
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label for="button_link">Button Link</label>
                                <input type="text" id="button_link" class="form-control" name="button_link"
                                    value="{{ old('button_link')?old('button_link'):$homepage->button_link }}">
                            </div>
                            <div class="form-group">
                                <label for="button_name">Button Name</label>
                                <input type="text" id="button_name" class="form-control" name="button_name"
                                    value="{{ old('button_name')?old('button_name'):$homepage->button_name }}">
                            </div>
                            <div class="form-group">
                                <label>Cover Image</label>
                                <input type="file" name="cover_image"
                                    onchange="document.getElementById('cover_image').src = window.URL.createObjectURL(this.files[0])"
                                    accept="image/*">
                                <img src="" alt="image.jpeg" class="img-thumbnail" id="cover_image" height="100px"
                                    width="100px">
                            </div>
                        </div>
                        <!-- /.card -->
                    </div> --}}

                    <div class="card card-primary card-tabs">
                        <div class="card-header">
                            <h3 class="card-title">Banner Section</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                    data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"
                                    data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="banner_description">Banner Description</label>
                                <textarea name="banner_description" id="banner_description" class="form-control">
                                    {{ old('banner_description')?old('banner_description'):$homepage->banner_description }}
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label for="banner_button_link">Banner Button Link</label>
                                <input type="text" id="banner_button_link" class="form-control"
                                    name="banner_button_link"
                                    value="{{ old('banner_button_link')?old('banner_button_link'):$homepage->banner_button_link }}">
                            </div>
                            <div class="form-group">
                                <label for="banner_button_name">Banner Button Name</label>
                                <input type="text" id="banner_button_name" class="form-control"
                                    name="banner_button_name"
                                    value="{{ old('banner_button_name')?old('banner_button_name'):$homepage->banner_button_name }}">
                            </div>
                            <div class="form-group">
                                <label>Banner Image</label>
                                <input type="file" name="banner_image"
                                    onchange="document.getElementById('banner_image').src = window.URL.createObjectURL(this.files[0])"
                                    accept="image/*">
                                <img src="" alt="image.jpeg" class="img-thumbnail" id="banner_image" height="100px"
                                    width="100px">
                            </div>
                            <div class="form-group">
                                <label for="footer_description">Bottom Description</label>
                                <textarea name="footer_description" id="footer_description" class="form-control">
                                    {{ old('footer_description')?old('footer_description'):$homepage->footer_description }}
                                </textarea>
                            </div>
                        </div>
                        <!-- /.card -->
                    </div>

                    <div class="card card-primary card-tabs">
                        <div class="card-header">
                            <h3 class="card-title">Search Engine Optimization</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                    data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"
                                    data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="seo_title">SEO Title</label>
                                <input type="text" id="name" class="form-control" name="seo_title"
                                    value="{{ old('seo_title')?old('seo_title'):$homepage->seo_title }}">
                            </div>
                            <div class="form-group">
                                <label for="seo_keyword">SEO Keyword</label>
                                <textarea name="seo_keyword" id="seo_keyword" class="form-control"
                                    rows="2">{{ old('seo_keyword')?old('seo_keyword'):$homepage->seo_keyword }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="seo_description">News Title</label>
                                <textarea name="seo_description" id="seo_description" class="form-control"
                                    rows="2">{{ old('seo_description')?old('seo_description'):$homepage->seo_description }}</textarea>
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
                                <input type="submit" class="btn btn-primary" value="Publish">
                                <a href="{{ route('home') }}" class="btn btn-danger">Close</a>
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
    CKEDITOR.replace( 'description');
    CKEDITOR.replace( 'banner_description');
    CKEDITOR.replace( 'footer_description');
</script>
@endsection