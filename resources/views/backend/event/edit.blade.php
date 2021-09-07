@extends('layouts.backend_app')
@section('title')
Edit Event
@endsection

@section('content')
<form action="{{ route('backend.event.update',$event->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-md-9">
            <div class="card card-primary card-tabs">
                <div class="card-header">
                    <h3 class="card-title">Edit Event</h3>
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
                        <label for="title">Event Name</label>
                        <input type="text" id="name" class="form-control" name="title"
                            value="{{ old('title')?old('title'):$event->title }}" required>
                        @if($errors->has('title'))
                        <span class="text-danger">
                            {{ $errors->first('title') }}
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" id="name" class="form-control" name="location"
                            value="{{ old('location')?old('location'):$event->location }}" required>
                    </div>
                    <div class="form-group">
                        <label for="starting_time">Starting Time</label>
                        <input type="time" id="name" class="form-control" name="starting_time"
                            value="{{ old('starting_time')?old('starting_time'):$event->starting_time }}" required>
                    </div>
                    <div class="form-group">
                        <label for="end_time">Closing Time</label>
                        <input type="time" id="name" class="form-control" name="end_time"
                            value="{{ old('end_time')?old('end_time'):$event->end_time }}" required>
                    </div>
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" id="name" class="form-control" name="date"
                            value="{{ old('date')?old('date'):$event->date }}" required>
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
                        <input type="submit" class="btn btn-primary" value="Update">
                        <a href="{{ route('backend.event.index') }}" class="btn btn-danger">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
</form>
<!-- /.row -->
@endsection