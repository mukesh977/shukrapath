@extends('layouts.backend_app')
@section('title')
Add FAQ
@endsection

@section('content')
<form action="{{ route('backend.faq.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Add FAQ</h3>
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
                        <label for="question">Question</label>
                        <input type="text" id="name" class="form-control" name="question"
                            value="{{ old('question')?old('question'):'' }}" required>
                        @if($errors->has('question'))
                        <span class="text-danger">
                            {{ $errors->first('question') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="answer">Answer</label>
                        <textarea name="answer" id="answer">
                            {{ old('answer')?old('answer'):'' }}
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
        </div>

        <div class=" col-md-3">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Action</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Add">
                        <a href="{{ route('backend.faq.index') }}" class="btn btn-danger">Close</a>
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
    CKEDITOR.replace( 'answer');
</script>
@endsection