@extends('layouts.backend_app')

@section('title')
Calendar
@endsection
@section('content')
<form method="post" name="logo_form" action="{{ route('backend.calendar.update') }}" enctype="multipart/form-data">
	@csrf
	<div class="row my-2">
		<div class="col-md-9">
			<div class="card">
				<div class="card-header">
					Calendar
				</div>
				<div class="card-body">
					<div class="form-group">
						<div class="form-group">
							<label for="month">Calendar for the month of:</label>
							<input type="text" class="form-control" id="month" name="month" value="{{ $calendar->month }}">
						</div>						
						<div class="form-group">
							<label for="month">Description</label>
							<textarea name="image" id="image"></textarea>
						</div>						
					</div>

					<div class="form-group">
						<label for="file">PDF File</label>
						<input type="file" name="file" class="form-control">
					</div>
					@if($errors->has('image'))
					<span class="text-danger">
						{{ $errors->first('image') }}
					</span>
					@endif

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
@stop

@section('script')
<script>
	CKEDITOR.replace( 'image' );
</script>
@endsection