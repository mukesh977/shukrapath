@extends('layouts.backend_app')

@section('title')
Online Application
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        Online Application
        <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Delete</button>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col"><input type="checkbox" id="all_check"></th>
                    <th scope="col">S.N</th>
                    <th scope="col">Name</th>
                    <th scope="col">Mobile No</th>
                    <th scope="col">Address</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse($applies as $value)
                <tr>
                    <td>
                        <input type="checkbox" value="{{ $value->id }}" class="partner_checkbox">
                    </td>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        {{ $value->name }}
                    </td>
                    <td>{{ $value->mobile_no }}</td>
                    <td>{{ $value->temporary_address }}</td>
                    <td>
                        <a href="{{ route('backend.apply.show', $value->id) }}" class="btn btn-primary btn-sm" target="_blank"><i
                                class="fa fa-eye"> </i></a>
                        {{-- <a href="{{ route('backend.apply.download', $value->id) }}" class="btn btn-primary btn-sm"><i
                                class="fa fa-download"> </i></a> --}}
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

            $(".partner_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete all data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.apply.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".partner_checkbox:checked").each(function (){
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