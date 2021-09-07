@extends('layouts.backend_app')
@section('title')
Edit News
@endsection

@section('content')
<form action="{{ route('backend.news.update', $news->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit News</h3>

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
                        <label for="news_title">News Title</label>
                        <input type="text" id="name" class="form-control" name="news_title"
                            value="{{ old('news_title')?old('news_title'):$news->news_title }}">
                        @if($errors->has('news_title'))
                        <span class="text-danger">
                            {{ $errors->first('news_title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="first_paragraph">First Paragraph</label>
                        <textarea name="first_paragraph"
                            id="first_paragraph">{{ old('first_paragraph')?old('first_paragraph'):$news->first_paragraph }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="highlighted_news">Highlighted News</label>
                        <textarea name="highlighted_news"
                            id="highlighted_news">{{ old('highlighted_news')?old('highlighted_news'):$news->highlighted_news }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="second_paragraph">Second Paragraph</label>
                        <textarea name="second_paragraph"
                            id="second_paragraph">{{ old('second_paragraph')?old('second_paragraph'):$news->second_paragraph }}</textarea>
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
                            value="{{ $news->seo_title }}">
                    </div>
                    <div class="form-group">
                        <label for="seo_keyword">SEO Keyword</label>
                        <textarea name="seo_keyword" id="seo_keyword" class="form-control"
                            rows="2">{{ $news->seo_keyword }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="seo_description">News Title</label>
                        <textarea name="seo_description" id="seo_description" class="form-control"
                            rows="2">{{ $news->seo_description }}</textarea>
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
                        <label>Cover Image</label>
                        <img src="{{ asset(Storage::url($news->cover_image)) }}" alt="image.jpeg" class="rounded"
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
                        <img src="{{ asset(Storage::url($news->featured_image)) }}" alt="image.jpeg" class="rounded"
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
                        <input type="submit" class="btn btn-primary" value="Update">
                        <a href="{{ route('backend.news.index') }}" class="btn btn-danger">Close</a>
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
    CKEDITOR.replace( 'first_paragraph');
    CKEDITOR.replace( 'highlighted_news');
    CKEDITOR.replace( 'second_paragraph');
</script>
@endsection