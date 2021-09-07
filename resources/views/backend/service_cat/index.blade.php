@extends('layouts.backend_app')

@section('title')
Service Category
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        Projects
        <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Delete</button>

        <a href="{{ route('backend.service-category.create') }}" class="btn btn-success btn-sm mx-2">Add Category</a>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col"><input type="checkbox" id="all_check"></th>
                    <th scope="col">S.N</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Order</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse($serviceCategory as $value)
                <tr>
                    <td>
                        <input type="checkbox" value="{{ $value->id }}" class="cat_checkbox">
                    </td>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $value->name }}</td>
                    <td>{{ $value->order }}</td>
                    <td>{{ date('d-M Y', strtotime($value->created_at)) }}</td>
                    <td>
                        <a href="{{ route('backend.service-category.edit', $value->id) }}"
                            class="btn btn-secondary m-2"><i class="fa fa-edit"> </i></a>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="6">
                        No data found!
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@stop

@section('script')
<script>
    $(document).ready(function()    {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $("#all_check").on('change', function()    {
            if(this.checked){
                $('input[type=checkbox]').each(function()   {
                    this.checked = true;
                });
            }else{
                $('input[type=checkbox]').each(function()  {
                    this.checked = false;
                });
            }
        });

        $("#bulk_delete").on('click', function()    {
            var ch_array = Array();

            $(".cat_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete all data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.service-category.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".cat_checkbox:checked").each(function (){
                                $(this).parents("tr").remove();
                            });
                        },
                    });
                }

            }
            else{
                alert('Please select at least one checkbox.');
            }
        })
    }); 
       
</script>
@endsection