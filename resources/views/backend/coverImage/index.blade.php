@extends('layouts.backend_app')
@section('title')
Cover Images
@endsection

@section('content')
<form action="{{ route('backend.cover_image.update', $cover_image->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-9">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Contact Us Cover Image and SEO</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                            title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body" style="display: block;">
                    <div class="form-group">
                        <label>Contact Us Cover Image</label>
                        <input type="file" name="contact_us_cover_image"
                            onchange="document.getElementById('contact_us_cover_image').src = window.URL.createObjectURL(this.files[0])"
                            accept="image/*">
                        <img src="{{ asset(Storage::url($cover_image->contact_us_cover_image)) }}" alt="image.jpeg"
                            class="img-thumbnail" id="contact_us_cover_image" height="100px" width="100px">
                    </div>
                    <div class="form-group">
                        <label for="contact_us_seo_title">SEO Title</label>
                        <input type="text" id="contact_us_seo_title" class="form-control" name="contact_us_seo_title"
                            value="{{ old('contact_us_seo_title')?old('contact_us_seo_title'):$cover_image->contact_us_seo_title }}">
                    </div>
                    <div class="form-group">
                        <label for="contact_us_seo_description">SEO Description</label>
                        <textarea name="contact_us_seo_description" id="contact_us_seo_description"
                            class="form-control">{{ $cover_image->contact_us_seo_description }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="contact_us_seo_keyword">SEO Keyword</label>
                        <textarea name="contact_us_seo_keyword" id="contact_us_seo_keyword"
                            class="form-control">{{ $cover_image->contact_us_seo_keyword }}</textarea>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">News Cover Photo and SEO</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                            title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body" style="display: block;">
                    <div class="form-group">
                        <label>News Cover Image</label>
                        <input type="file" name="news_cover_image"
                            onchange="document.getElementById('news_cover_image').src = window.URL.createObjectURL(this.files[0])"
                            accept="image/*">
                        <img class="img-thumbnail" id="news_cover_image"
                            src="{{ asset(Storage::url($cover_image->news_cover_image)) }}" height="100px" width="100px"
                            alt="image.jpeg">
                    </div>
                    <div class="form-group">
                        <label for="news_seo_title">SEO Title</label>
                        <input type="text" id="news_seo_title" class="form-control" name="news_seo_title"
                            value="{{ old('news_seo_title')?old('news_seo_title'):$cover_image->news_seo_title }}">
                    </div>
                    <div class="form-group">
                        <label for="news_seo_description">SEO Description</label>
                        <textarea name="news_seo_description" id="news_seo_description"
                            class="form-control">{{ $cover_image->news_seo_description }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="news_seo_keyword">SEO Keyword</label>
                        <textarea name="news_seo_keyword" id="news_seo_keyword"
                            class="form-control">{{ $cover_image->news_seo_keyword }}</textarea>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Other Cover Images</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                            <i class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                            title="Remove">
                            <i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body" style="display: block;">
                    <div class="form-group">
                        <label>Gallery Cover Image</label>
                        <input type="file" name="gallery_cover_image"
                            onchange="document.getElementById('gallery_cover_image').src = window.URL.createObjectURL(this.files[0])"
                            accept="image/*">
                        <img id="gallery_cover_image" class="img-thumbnail"
                            src="{{ asset(Storage::url($cover_image->gallery_cover_image)) }}" height="100px"
                            width="100px" alt="image.jpeg">
                    </div>
                    <div class="form-group">
                        <label>Team Cover Image</label>
                        <input type="file" name="team_cover_image"
                            onchange="document.getElementById('team_cover_image').src = window.URL.createObjectURL(this.files[0])"
                            accept="image/*">
                        <img src="{{ asset(Storage::url($cover_image->team_cover_image)) }}" class="img-thumbnail"
                            id="team_cover_image" height="100px" width="100px" alt="image.jpeg">
                    </div>
                    <div class="form-group">
                        <label>Team Cover Image</label>
                        <input type="file" name="service_cover_image"
                            onchange="document.getElementById('service_cover_image').src = window.URL.createObjectURL(this.files[0])"
                            accept="image/*">
                        <img src="{{ asset(Storage::url($cover_image->service_cover_image)) }}" class="img-thumbnail"
                            id="service_cover_image" height="100px" width="100px" alt="image.jpeg">
                    </div>
                </div>
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
                        <a href="{{ route('home') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
<!-- /.row -->
@endsection