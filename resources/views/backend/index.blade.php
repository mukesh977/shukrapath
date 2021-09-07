@extends('layouts.backend_app')
@section('title')
Dashboard
@endsection
@section('content')
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>Dashboard</h1>
			</div>
		</div>
	</div><!-- /.container-fluid -->
</section>
<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-info">
						<i class="fas fa-gift"></i>
					</span>

					<div class="info-box-content">
						<span class="info-box-text">Total Services</span>
						<span class="info-box-number">{{ $total_service }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-success"><i class="fas fa-puzzle-piece"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">Service Categories</span>
						<span class="info-box-number">{{ $service_categories }}</span>
					</div>
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-warning"><i class="fas fa-newspaper"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">News</span>
						<span class="info-box-number">{{ $total_news }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-danger"><i class="fas fa-users"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">Users</span>
						<span class="info-box-number">{{ $total_users }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-info"><i class="fas fa-user-friends"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">Team Member</span>
						<span class="info-box-number">{{ $team_member }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-success"><i class="fab fa-chrome"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">Pages</span>
						<span class="info-box-number">{{ $total_pages }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-warning"><i class="fas fa-handshake"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">Affiliation</span>
						<span class="info-box-number">{{ $total_partner }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-12">
				<div class="info-box">
					<span class="info-box-icon bg-danger"><i class="fas fa-comments"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">Testimonal</span>
						<span class="info-box-number">{{ $total_testimonal }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
		</div>
		
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">enquiries <span class="badge bg-danger">{{ $total_enquiries }}</span>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>S.N</th>
							<th>Full Name</th>
							<th>Phone</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						@forelse ($enquiries as $item)
						<tr>
							<td>{{ $loop->iteration }}</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->phone }}</td>
							<td>{{ $item->email }}</td>
						</tr>
						@empty
						<tr>
							<td colspan="4">
								No enquiries found.
							</td>
						</tr>
						@endforelse
					</tbody>
				</table>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->

		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Applications <span class="badge bg-danger">{{ $total_applicant }}</span>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>S.N</th>
							<th>Full Name</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						@forelse ($applied as $item)
						<tr>
							<td>{{ $loop->iteration }}</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->mobile_no }}</td>
							<td>{{ $item->temporary_address }}</td>
							<td>
								<form action="{{ route('backend.apply.destroy',$item->id) }}" method="post"
									class="form-inline">
									@csrf
									@method('delete')
									<a href="{{ route('backend.apply.show',$item->id) }}" class="btn-sm"
										target="_blank"><i class="fas fa-eye"></i></a>
									{{-- <button class="btn sm" type="submit"
										onclick="return confirm('Are you sure you want to delete this data?');">
										<i class="fas fa-trash"></i>
									</button> --}}
								</form>
							</td>
						</tr>
						@empty
						<tr>
							<td colspan="5">
								No Application found.
							</td>
						</tr>
						@endforelse
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				<a href="{{ route('backend.apply.index') }}" class="btn btn-primary btn-sm float-right">View All</a>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
		<!-- /.col -->
	</div>
</section>
@stop