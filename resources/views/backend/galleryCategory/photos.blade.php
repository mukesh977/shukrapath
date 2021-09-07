@extends('layouts.backend_app')

@section('title')
{{ $galleryCategory->category_name }}
@endsection
@section('content')
<div class="card">
    <div class="card-header">
        {{ $galleryCategory->category_name }}
        <button class="btn btn-danger btn-sm mx-2" id="bulk_delete">Bulk Delete</button>
        <a href="{{ route('backend.album.index') }}" class="btn btn-primary btn-sm">List Album</a>
    </div>
    <div class="card-body">
        <div class="row">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" id="all_check">
                        </th>
                        <th scope="col">S.N</th>
                        <th scope="col">Image</th>
                        <th scope="col">Created At</th>
                        <th scope="col">Updated At</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($galleryCategory->gallery as $value)
                    <tr>
                        <td>
                            <input type="checkbox" value="{{ $value->id }}" class="photo_checkbox">
                        </td>
                        <td scope="col">{{ $loop->iteration }}</td>
                        <td scope="col">
                            <img src="{{ asset(Storage::url($value->image)) }}" class="img-thumbnail" height="100px"
                                width="100px">
                        </td>
                        <td scope="col">{{ $value->created_at }}</td>
                        <td scope="col">{{ $value->updated_at }}</td>
                        <td scope="col">
                            <a href="{{ route('backend.photo.edit', $value->id) }}"
                                class="btn btn-primary btn-sm m-2"><i class="fa fa-edit"> </i></a>
                            </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td scope="col" colspan="5">
                            No photos found.
                        </td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
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

            $(".photo_checkbox:checked").each(function (){
                ch_array.push($(this).val());
            });
            if( ch_array.length > 0 )
            {
                if( confirm("Are you sure you want to delete all data?") )
                {
                    $.ajax({
                        url: "{{ route('backend.photo.bulk_delete') }}",
                        method: "delete",
                        data: {
                            ch_array : ch_array
                        },
                        success:function(data)
                        {
                            $(".photo_checkbox:checked").each(function (){
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