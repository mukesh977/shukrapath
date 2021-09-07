@extends('layouts.backend_app')

@section('title')
Album
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        Gallery
        <a href="{{ route('backend.album.create') }}" class="btn btn-success btn-sm">
            Add Album
        </a>
        <a href="{{ route('backend.photo.create') }}" class="btn btn-success btn-sm">
            Add Photo
        </a>
    </div>
    <div class="card-body">
        <div class="row">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">S.N</th>
                        <th scope="col">Title</th>
                        <th scope="col">Thumbnail</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($gallery_category as $value)
                    <tr>
                        <td scope="col">{{ $loop->iteration }}</td>
                        <td scope="col">{{ $value->category_name }}</td>
                        <td scope="col">
                            <img src="{{ asset(Storage::url($value->thumbnail_image)) }}" class="img-thumbnail"
                                height="100px" width="100px">
                        </td>
                        <td scope="col">
                            <form class="form-inline" method="post"
                                action="{{ route('backend.album.destroy', $value->id) }}">
                                @csrf
                                @method('delete')
                                <a href="{{ route('backend.album.edit', $value->id) }}"
                                    class="btn btn-primary btn-sm m-2"><i class="fa fa-edit"> </i></a>
                                    <button onclick="return confirm('Are you sure?')" type="submit"
                                    class="btn btn-danger btn-sm">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <a href="{{ route('backend.album.photos', $value->id) }}"
                                    class="btn btn-primary btn-sm m-2">View Photos</a>
                            </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td scope="col" colspan="5">
                            No album found.
                        </td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop