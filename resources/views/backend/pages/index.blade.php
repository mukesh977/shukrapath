@extends('layouts.backend_app')

@section('title')
Pages
@endsection
@section('content')
<section class="content">
    <div class="card">
        <div class="card-header">
            Pages
            <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Bulk Delete</button>
            <a href="{{ route('backend.page.create') }}" class="btn btn-success btn-sm">Add Page</a>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col"><input type="checkbox" id="all_check"></th>
                        <th scope="col">S.N</th>
                        <th scope="col">Image</th>
                        <th scope="col">Title</th>
                        <th scope="col">Created At</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($pages as $key=>$value)
                    <tr>
                        <td>
                            <input type="checkbox" value="{{ $value->id }}" class="page_checkbox">
                        </td>
                        <td>{{$key+1}}</td>
                        <td>
                            <img src="{{ asset(Storage::url($value->featured_image)) }}" alt="image.jpeg"
                                class="img-thumbnail" height="100px" width="100px">
                        </td>
                        <td>{{$value->page_title}}</td>
                        <td>{{ date( 'j-M Y', strtotime( $value->created_at )) }}</td>
                        <td>
                            <a href="{{ route('backend.page.edit', $value->id) }}" class="btn btn-secondary btn-sm"><i
                                    class="fa fa-edit"> </i></a>
                            </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4">
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

            $(".page_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete all data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.page.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".page_checkbox:checked").each(function (){
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