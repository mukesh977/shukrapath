@extends('layouts.backend_app')

@section('title')
FAQ
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        FAQ
        <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Bulk Delete</button>
        <a href="{{ route('backend.faq.create') }}" class="btn btn-success btn-sm mx-2">
            Add FAQ
        </a>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col"><input type="checkbox" id="all_check"></th>
                    <th scope="col">S.N</th>
                    <th scope="col">question</th>
                    <th scope="col">order</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @forelse($faq as $value)
                <tr>
                    <td>
                        <input type="checkbox" value="{{ $value->id }}" class="faq_checkbox">
                    </td>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $value->question }}</td>
                    <td>{{ $value->order }}</td>
                    <td>{{ $value->created_at->format('d-M Y h:m:s A') }}</td>
                    <td>
                        <a href="{{ route('backend.faq.edit', $value->id) }}" class="btn btn-secondary btn-sm"><i
                                class="fa fa-edit"> </i></a>
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

        $(".faq_checkbox:checked").each(function (){
            ch_array.push($(this).val());
        });
        if( ch_array.length > 0 )
        {
            if( confirm("Are you sure you want to delete all data?") )
            {
                $.ajax({
                    url: "{{ route('backend.faq.bulk_delete') }}",
                    method: "delete",
                    data: {
                        ch_array : ch_array
                    },
                    success:function(data)
                    {
                        $(".faq_checkbox:checked").each(function (){
                            $(this).parents("tr").remove();
                        });
                    },
                });
            }

        }else{
            alert('Please select at least one checkbox.');
        }
    })
});
</script>
@endsection