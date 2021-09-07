@extends('layouts.backend_app')

@section('title')
Testimonal
@endsection
@section('content')
<section class="content">    
    <div class="card mt-2">
        <div class="card-header">
            Testimonal
            <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Delete</button>
            <a href="{{ route('backend.testimonal.create') }}" class="btn btn-success btn-sm mx-2">Add Testimonal</a>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col"><input type="checkbox" id="all_check"></th>
                        <th scope="col">S.N</th>
                        <th scope="col">Author</th>
                        <th scope="col">Designation</th>
                        <th scope="col">Order</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($testimonal as $key=>$value)
                    <tr>
                        <td>
                            <input type="checkbox" value="{{ $value->id }}" class="news_checkbox">
                        </td>
                        <td>{{$key+1}}</td>
                        <td>{{$value->author}}</td>
                        <td>{{$value->designation}}</td>
                        <td>{{$value->order}}</td>
                        <td>
                            {{-- <form class="form-inline" method="post"
                                action="{{ route('backend.testimonal_destroy', $value->id) }}">
                                @csrf
                                @method('delete') --}}
                                <a href="{{ route('backend.testimonal.edit', $value->id) }}"
                                    class="btn btn-secondary btn-sm"><i class="fa fa-edit"> </i></a>
                                {{-- <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-danger">
                                    <i class="fa fa-trash"></i>
                                </button> --}}
                            {{-- </form> --}}
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
</section>
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

            $(".news_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete all data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.testimonal.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".news_checkbox:checked").each(function (){
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