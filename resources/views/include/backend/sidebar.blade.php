<aside class="main-sidebar sidebar-dark-primary elevation-4">

  <a href="{{ route('frontend_index') }}" class="brand-link" target="_blank">
    <img src="{{ asset('default_images/logo.jpg') }}" alt="Shikhar Logo" class="brand-image img-circle elevation-3">
    <span class="brand-text font-weight-light">Sukrapath Coop.</span>
  </a>



  <!-- Sidebar -->

  <div class="sidebar">

    {{-- <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{ asset('adminlte/img/avatar5.png') }}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="{{ route('backend.profile_index') }}" class="d-block">
          @if ( Auth::check() )
          {{ ucfirst(Auth::user()->name) }}
          @else
          Team Shukrapath
          @endif
        </a>
      </div>
    </div> --}}

    <!-- Sidebar Menu -->
    <nav class="mt-2">

      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item has-treeview ">
          <a href="{{ route('backend.slider.index') }}"
            class="nav-link {{ (request()->routeis('backend.slider.index'))?'active':'' }}">

            <i class="fas fa-thumbtack"></i>

            <p>

              &nbsp;Slider

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview ">
          <a href="{{ route('backend.homepage.index') }}"
            class="nav-link {{ (request()->routeis('backend.homepage.index'))?'active':'' }}">

            <i class="fas fa-home"></i>

            <p>

              Homepage

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.feature.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.feature.*')?'active':'' ) }}">

            <i class="fas fa-luggage-cart"></i>

            <p>

              Features

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.faq.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.faq.*')?'active':'' ) }}">

            <i class="fas fa-question-circle"></i>

            <p>

              Frequently Asked Question

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.testimonal.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.testimonal.index')?'active':'' ) }}">

            <i class="fas fa-comments"></i>

            <p>

              Testimonal

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.event.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.event.*')?'active':'' ) }}">

            <i class="fas fa-calendar-alt"></i>

            <p>

              Event

            </p>

          </a>
        </li>   
        <li class="nav-item has-treeview">
          <a href="{{ route('backend.branch.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.branch.*')?'active':'' ) }}">

            <i class="fas fa-code-branch"></i>

            <p>

              Branch

            </p>

          </a>
        </li>             

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.about_us_index') }}"
            class="nav-link {{ ( request()->routeIs('backend.about_us_index') )?'active':'' }}">

            <i class="fas fa-address-card"></i>

            <p>

              About Us

            </p>

          </a>
        </li>

        <li
          class="nav-item has-treeview {{ (request()->routeIs(['backend.department.*', 'backend.team.*']))?'menu-open':'' }}">

          <a href="#"
            class="nav-link {{ (request()->routeIs(['backend.department.*', 'backend.team.*']))?'active':'' }}">

            <i class="fas fa-user-friends"></i>

            <p>

              Department & Team

            </p>
            <i class="fas fa-angle-left right"></i>

          </a>

          <ul class="nav nav-treeview">


            <li class="nav-item">

              <a href="{{ route('backend.team.index') }}"
                class="nav-link {{ (request()->routeIs('backend.team.*'))?'active':'' }}">

                <i class="fa fa-circle nav-icon"></i>

                <p>Manage Team</p>

              </a>

            </li>

            <li class="nav-item">

              <a href="{{ route('backend.department.index') }}"
                class="nav-link {{ (request()->routeIs('backend.department.*'))?'active':'' }}">

                <i class="fa fa-circle nav-icon"></i>

                <p>Manage Department</p>

              </a>

            </li>

          </ul>

        </li>

        <li class="nav-item has-treeview">

          <a href="#" class="nav-link">

            <i class="fas fa-gift"></i>

            <p>

              Service

            </p>
            <i class="fas fa-angle-left right"></i>

          </a>


          <ul class="nav nav-treeview" style="display: none;">

            <li class="nav-item">

              <a href="{{ route('backend.service-category.index') }}" class="nav-link">

                <i class="fa fa-circle nav-icon"></i>

                <p>Service Category</p>

              </a>

            </li>

            <li class="nav-item">

              <a href="{{ route('backend.service.index') }}" class="nav-link">

                <i class="fa fa-circle nav-icon"></i>

                <p>Manage Service</p>

              </a>

            </li>

          </ul>

        </li>

        <li class="nav-item has-treeview ">
          <a href="{{ route('backend.download.index') }}"
            class="nav-link {{ (request()->routeis('backend.download.index'))?'active':'' }}">

            <i class="fas fa-download"></i>
            <p>

              Downloads

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview ">
          <a href="{{ route('backend.album.index') }}"
            class="nav-link {{ (request()->routeis('backend.album.index'))?'active':'' }}">

            <i class="fas fa-camera"></i>
            <p>

              Album & Gallery

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.news.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.news.index')?'active':'' ) }}">

            <i class="fas fa-newspaper"></i>

            <p>

              News

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview ">
          <a href="{{ route('backend.calendar.index') }}"
            class="nav-link {{ (request()->routeis('backend.calendar.index'))?'active':'' }}">

            <i class="fas fa-calendar"></i>
            <p>

              Calendar

            </p>

          </a>
        </li>                      

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.page.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.backend.page.index')?'active':'' ) }}">

            <i class="fab fa-chrome"></i>

            <p>

              Pages

            </p>

          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.cover_image.index') }}" class="nav-link">

            <i class="fas fa-images"></i>

            <p>

              Cover Images

            </p>

          </a>
        </li>                        

        <li class="nav-item has-treeview">
          <a href="{{ route('backend.affiliation.index') }}"
            class="nav-link {{ ( request()->routeIs('backend.backend.partner_index')?'active':'' ) }}">

            <i class="fas fa-handshake"></i>

            <p>

              Affiliation

            </p>

          </a>
        </li>

        @role('admin')
        <li class="nav-item has-treeview">

          <a href="#" class="nav-link">

            <i class="fas fa-user-tie"></i>

            <p>

              Manage User

            </p>
            <i class="fas fa-angle-left right"></i>

          </a>

          <ul class="nav nav-treeview" style="display: none;">

            <li class="nav-item">

              <a href="{{ route('backend.user_create') }}" class="nav-link">

                <i class="fa fa-circle nav-icon"></i>

                <p>Add User</p>

              </a>

            </li>

            <li class="nav-item">

              <a href="{{ route('backend.user_index') }}" class="nav-link">

                <i class="fa fa-circle nav-icon"></i>

                <p>Manage User</p>

              </a>

            </li>

          </ul>

        </li>
        @endrole        
      </ul>

    </nav>

    <!-- /.sidebar-menu -->

  </div>

  <!-- /.sidebar -->

</aside>