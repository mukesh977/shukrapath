@extends('layouts.backend_app')

@section('content')
<div class="card">
    <div class="card-header">
        Downloads
        <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Delete</button>
        <a href="{{ route('backend.download.create') }}" class="btn btn-success btn-sm ">Add New</a>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col"><input type="checkbox" id="all_check"></th>
                    <th scope="col">S.N</th>
                    <th scope="col">Title</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse($downloads as $value)
                <tr>
                    <td>
                        <input type="checkbox" value="{{ $value->id }}" class="service_checkbox">
                    </td>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        {!! $value->title !!}
                    </td>                   
                    <td>{{ date('d-M Y', strtotime($value->created_at)) }}</td>
                    <td>
                        <a href="{{ route('backend.download.show', $value->id) }}"
                            class="btn btn-secondary btn-sm"><i class="fas fa-download"> </i></a>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="8">
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

            $(".service_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete selected data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.download.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".service_checkbox:checked").each(function (){
                                $(this).parents("tr").remove();
                            });
                            toastr.success("Data deleted successfully", 'Success', {closeButton :true })    
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