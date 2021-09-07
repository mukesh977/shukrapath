@extends('layouts.backend_app')

@section('title')
Departments
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        Our Departments

        <a href="{{ route('backend.department.create') }}" class="btn btn-success btn-sm">
        Add Department
        </a>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">S.N</th>
                    <th scope="col">Department Name</th>
                    <th scope="col">Order</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse($department as $key=>$value)
                <tr>
                    <td>{{$key+1}}</td>
                    <td>{{$value->department_name}}</td>
                    <td>{{$value->order}}</td>
                    <td>
                        <form class="form-inline" method="post"
                            action="{{ route('backend.department.destroy', $value->id) }}">
                            @csrf
                            @method('delete')
                            <a href="{{ route('backend.department.edit', $value->id) }}"
                                class="btn btn-secondary m-2"><i class="fa fa-edit"> </i></a>
                            <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-danger">
                                <i class="fa fa-trash"></i>
                            </button>
                            {{-- <a href="{{ route('backend.department_member.index', $value->id) }}" --}}
                            {{-- class="btn btn-success m-2"><i class="fas fa-user-friends"></i> Members</a> --}}
                        </form>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="5">
                        No data found!
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@stop