<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="icon" href="{{ asset('default_images/favicon.png') }}" type="image/gif" sizes="16x16">

  
  @include('include.backend.header')

</head>

<body class="hold-transition sidebar-mini">

  <div class="wrapper">
    <!-- Navbar -->
    @include('include.backend.navbar')
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('include.backend.sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <div class="content">
        <div class="container-fluid">
          @yield('content')
        </div>
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    @include('include.backend.footer')

  </div>

  <!-- REQUIRED SCRIPTS -->
  @include('include.backend.script')

  @yield('script')

</body>

</html>