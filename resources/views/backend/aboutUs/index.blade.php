@extends('layouts.backend_app')
@section('seo')

@endsection

@section('content')
<form action="{{ route('backend.about_us_update') }}" method="post" enctype="multipart/form-data">
	@csrf
	<div class="row mt-2">
		<div class="col-md-9">
			<div class="card card-primary card-tabs">
				<div class="card-header">
					<h3 class="card-title">About Us</h3>

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
						<input type="text" class="form-control" name="title" id="title" value="{{ $aboutUs->title }}">
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<textarea name="description" id="description" class="form-control">
                                    {{ $aboutUs->description }}
                                </textarea>
					</div>

					<div class="form-group">
						<label>Cover Image</label>
						<input type="file" name="cover_image"
							onchange="document.getElementById('cover_image').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
						<img src="{{ asset(Storage::url($aboutUs->cover_image)) }}" id="cover_image" height="100px"
							width="100px" class="img-thumbnail">
					</div>

					<div class="form-group">
						<label>First Featured Image</label>
						<input type="file" name="first_featured_image"
							onchange="document.getElementById('first_featured_image').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
						<img src="{{ asset(Storage::url($aboutUs->first_featured_image)) }}" id="first_featured_image"
							height="100px" width="100px" class="img-thumbnail">
					</div>
					<div class="form-group">
						<label>Second Featured Image</label>
						<input type="file" name="second_featured_image"
							onchange="document.getElementById('second_featured_image').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
						<img src="{{ asset(Storage::url($aboutUs->second_featured_image)) }}" id="second_featured_image"
							height="100px" width="100px" class="img-thumbnail">
					</div>
					<div class="form-group">
						<label for="image_text">Image Text</label>
						<input type="text" class="form-control" name="image_text" id="image_text"
							value="{{ $aboutUs->image_text }}">
						<span class="text-muted">comma symbol will break the line.</span>
					</div>
				</div>
				<!-- /.card -->
			</div>

			<div class="card card-primary card-tabs">
				<div class="card-header">
					<h3 class="card-title">Our Key Points</h3>
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
						<label id="first_featured_image">First Card Image</label>
						<span class="text-muted">
							You can get the awesome icon from <a href="https://fontawesome.com/icons?d=gallery"
								target="_blank">here.</a>
						</span>
						<input type="text" class="form-control" name="first_feature_image" id="first_featured_image"
							value="{{ $aboutUs->first_feature_image }}">
					</div>
					<div class="form-group">
						<label for="first_feature"> First Features</label>
						<input type="text" class="form-control" name="first_feature"
							value="{{ $aboutUs->first_feature }}">
					</div>
					<div class="form-group">
						<label for="first_description">First Description</label>
						<textarea name="first_description" id="first_description" class="form-control">
                                    {{  $aboutUs->first_description  }}
                                </textarea>
					</div>

					<div class="form-group">
						<label id="second_feature_image">Second Card Image</label>
						<span class="text-muted">
							You can get the awesome icon from <a href="https://fontawesome.com/icons?d=gallery"
								target="_blank">here.</a>
						</span>
						<input type="text" class="form-control" name="second_feature_image" id="second_feature_image"
							value="{{ $aboutUs->second_feature_image }}">
					</div>
					<div class="form-group">
						<label for="second_feature"> Second Feature</label>
						<input type="text" class="form-control" name="second_feature" id="second_feature"
							value="{{ $aboutUs->second_feature }}">
					</div>
					<div class="form-group">
						<label for="second_description">Second Description</label>
						<textarea name="second_description" id="second_description" class="form-control">
									{{ $aboutUs->second_description }}
								</textarea>
					</div>


					<div class="form-group">
						<label id="third_feature_image">Third Card Image</label>
						<span class="text-muted">
							You can get the awesome icon from <a href="https://fontawesome.com/icons?d=gallery"
								target="_blank">here.</a>
						</span>
						<input type="text" class="form-control" name="third_feature_image" id="third_feature_image"
							value="{{ $aboutUs->third_feature_image }}">
					</div>
					<div class="form-group">
						<label for="third_feature"> Third Features</label>
						<input type="text" class="form-control" id="third_feature" name="third_feature"
							value="{{ $aboutUs->third_feature }}">
					</div>
					<div class="form-group">
						<label for="third_description">Third Description</label>
						<textarea name="third_description" id="third_description" class="form-control">
                                    {{$aboutUs->third_description }}
                                </textarea>
					</div>
					<div class="form-group">
						<label id="forth_feature_image">Foth Card Image</label>
						<span class="text-muted">
							You can get the awesome icon from <a href="https://fontawesome.com/icons?d=gallery"
								target="_blank">here.</a>
						</span>
						<input type="text" class="form-control" name="forth_feature_image" id="forth_feature_image"
							value="{{ $aboutUs->forth_feature_image }}">
					</div>
					<div class="form-group">
						<label for="forth_feature"> Forth Features</label>
						<input type="text" class="form-control" id="forth_feature" name="forth_feature"
							value="{{ $aboutUs->forth_feature }}">
					</div>
					<div class="form-group">
						<label for="forth_description">Forth Description</label>
						<textarea name="forth_description" id="forth_description" class="form-control">
                                    {{$aboutUs->forth_description }}
                                </textarea>
					</div>
				</div>
			</div>

			<div class="card card-primary card-tabs">
				<div class="card-header">
					<h3 class="card-title">Statistics</h3>

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
						<label for="years_of_experience">Experience(in years)</label>
						<input type="text" id="years_of_experience" name="years_of_experience" class="form-control"
							value="{{ $aboutUs->years_of_experience }}">
					</div>
					<div class="form-group">
						<label for="happy_client">No. of Happy Client</label>
						<input type="text" id="happy_client" name="happy_client" class="form-control"
							value="{{ $aboutUs->happy_client }}">
					</div>
					<div class="form-group">
						<label for="no_of_branch">Total Branch</label>
						<input type="text" id="no_of_branch" name="no_of_branch" class="form-control"
							value="{{ $aboutUs->no_of_branch }}">
					</div>
					<div class="form-group">
						<label for="total_share">Total Share</label>
						<input type="text" id="total_share" name="total_share" class="form-control"
							value="{{ $aboutUs->total_share }}">
						<span class="form-text text-muted">Amount automatically measured in thousand.</span>
					</div>
				</div>
				<!-- /.card -->
			</div>

			<div class="card card-primary card-tabs">
				<div class="card-header">
					<h3 class="card-title">Vision And Mission</h3>

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
						<label for="our_mission">Our Mission</label>
						<textarea name="our_mission" id="our_mission" class="form-control">
							{{$aboutUs->our_mission }}
						</textarea>
					</div>
					<div class="form-group">
						<label>Mission Image</label>
						<input type="file" name="mission_image"
							onchange="document.getElementById('mission_image').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
						<img src="{{ asset(Storage::url($aboutUs->mission_image)) }}" id="mission_image" height="100px"
							width="100px" class="img-thumbnail">
					</div>
					<div class="form-group">
						<label for="our_vision">Our Vision</label>
						<textarea name="our_vision" id="our_vision" class="form-control">
							{{$aboutUs->our_vision }}
						</textarea>
					</div>
					<div class="form-group">
						<label>Vision Image</label>
						<input type="file" name="vision_image"
							onchange="document.getElementById('vision_image').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
						<img src="{{ asset(Storage::url($aboutUs->vision_image)) }}" id="vision_image" height="100px"
							width="100px" class="img-thumbnail">
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
						<label for="seo_title">Title</label>
						<input type="text" id="seo_title" name="seo_title" class="form-control"
							value="{{ $aboutUs->seo_title }}">
					</div>
					<div class="form-group">
						<label for="seo_description">Description</label>
						<textarea name="seo_description" class="form-control">
									{{ $aboutUs->seo_description }}
								</textarea>
					</div>
					<div class="form-group">
						<label for="seo_keyword">Keyword</label>
						<textarea name="seo_keyword" class="form-control">
									{{ $aboutUs->seo_keyword }}
								</textarea>
					</div>
				</div>
				<!-- /.card -->
			</div>
		</div>

		<div class="col-md-3">
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
@endsection

@section('script')
<script>
	CKEDITOR.replace( 'description' );
    CKEDITOR.replace( 'first_description' );         
    CKEDITOR.replace( 'second_description' );         
    CKEDITOR.replace( 'third_description' );   
    CKEDITOR.replace( 'forth_description' );   
    CKEDITOR.replace( 'our_mission' );   
    CKEDITOR.replace( 'our_vision' );   
</script>
@endsection