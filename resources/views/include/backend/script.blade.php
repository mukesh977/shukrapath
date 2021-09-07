<!-- jQuery -->
<script src="{{asset('adminlte/js/jquery.min.js')}}"></script>

<!-- Bootstrap 4 -->
<script src="{{asset('adminlte/js/bootstrap.min.js')}}"></script>

<!-- AdminLTE App -->
<script src="{{asset('adminlte/js/adminlte.min.js')}}"></script>

{{-- font awesome --}}
<script src="{{asset('adminlte/js/fontawesome.js')}}"></script>

{{-- jquery slim --}}
{{-- <script type="text/javascript" src="{{asset('adminlte/js/jquery_slim.min.js')}}"></script> --}}

{{-- popper js --}}
<script type="text/javascript" src="{{asset('adminlte/js/popper.min.js')}}"></script>


{{--ckeditor--}}
<script type="text/javascript" src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>

{{-- toast --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

<script>
    @if(session()->has('success_msg'))
    toastr.success("{{session()->get('success_msg')}}");
    @elseif( session()->has('error_msg') )
    toastr.error("{{session()->get('error_msg')}}")
    @endif
</script>