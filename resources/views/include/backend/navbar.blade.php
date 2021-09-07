<nav class="main-header navbar navbar-expand navbar-white navbar-light">

  <!-- Left navbar links -->

  <ul class="navbar-nav">

    <li class="nav-item">

      <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>

    </li>

    <li class="nav-item d-none d-sm-inline-block">

      <a href="{{ route('home') }}" class="nav-link">Home</a>

    </li>

  </ul>

  <!-- Right navbar links -->

  <ul class="navbar-nav ml-auto">

    <!-- Notifications Dropdown Menu -->

    <li class="nav-item dropdown">

      <a class="nav-link" data-toggle="dropdown" href="#">

        <i class="fa fa-cogs"></i>
      </a>

      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">

        <span class="dropdown-header">{{ auth()->user()->name }}( Current User )</span>

        <div class="dropdown-divider"></div>

        <a href="{{ route('backend.setting_index') }}" class="dropdown-item" title="setting">

          <i class="fa fa-cog mr-2"></i> Site Setting

        </a>
        <a href="{{ url('logout') }}" class="dropdown-item" target="Do you want to log out?">

          <i class="fa fa-cog mr-2"></i> Logout

        </a>
      </div>

    </li>
  </ul>

</nav>