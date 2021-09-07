<header>
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-7">
                    <div class="header-top-left">
                        <ul>
                            {{-- <li class="htl-translate">
                                <form action="#">
                                    <select name="translate" id="translate">
                                        <option value="Nepali"> Nepali</option>
                                        <option value="English">English</option>
                                    </select>
                                </form>
                            </li> --}}
                            <li class="htl-date">
                                <img src="{{ asset('frontend/images/calendar.png') }}" alt="">
                                <p>{{ date('D, dS M Y') }}</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-4 col-5 htr">
                    <div class="header-top-right">
                        {{-- <ul class="htr-menu">
                            <li><a href="#">Career</a></li>
                            <li><a href="#">Notice</a></li>
                            <li><a href="#">FAQ's</a></li>
                        </ul> --}}
                        <ul class="htr-social">
                            <li>
                                <a href="{{ $setting->institution_facebook_link }}" target="_blank"><i
                                        class="fab fa-facebook-f"></i></a>
                            </li>
                            <li>
                                <a href="{{ $setting->institution_instagram_link }}" target="_blank"><i
                                        class="fab fa-instagram"></i></a>
                            </li>
                            <li>
                                <a href="{{ $setting->institution_twitter_link }}" target="_blank"><i
                                        class="fab fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="{{ $setting->institution_linkedIn_link }}" target="_blank"><i
                                        class="fab fa-linkedin-in"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-mid">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="header-mid-left main-logo">
                        <a href="{{ route('frontend_index') }}"><img
                                src="{{ asset(Storage::url($setting->institution_logo)) }}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-12 hmr">
                    <div class="header-mid-right">
                        <ul>
                            <li>
                                <i class="fas fa-map-marker-alt"></i>
                                <span><small>Find Us</small>
                                    {{ $setting->institution_address }}
                                </span>
                            </li>
                            <li>
                                <i class="far fa-envelope"></i>
                                <span><small>Email us</small>
                                    {{ $setting->institution_email }}</span>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <span><small>Call Us</small>
                                    {{ $setting->institution_phone_number }},
                                    {{$setting->institution_mobile_number }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-6">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="{{ route('frontend_index') }}">Home <span
                                            class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.aboutUs') }}">
                                        About Us
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.services') }}">Services</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Team
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        @foreach ($departments_com as $department)
                                        <a class="dropdown-item"
                                            href="{{ route('frontend.department',$department->id) }}">
                                            {{ $department->department_name }}
                                        </a>
                                        @endforeach
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.download') }}">Downloads</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.gallery') }}">Gallery</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.news') }}">News</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.contactUs') }}">Contact</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.calendar') }}">Calendar</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('frontend.apply.create') }}">Apply</a>
                                </li>

                            </ul>
                        </div>
                    </nav>

                </div>
                <div class="col-lg-3 hbb col-6">
                    <div class="header-bottom-buttons">
                        <ul>
                            <li class="header-login">
                                <a href="{{ route('login') }}" target="_blank"><i class="far fa-user"></i></a>
                            </li>
                            {{-- <li class="header-search">
                                <i class="fa fa-search" aria-hidden="true"></i>
                                <div class="search-box">
                                    <form action="#">
                                        <input type="text" placeholder="">
                                        <input type="button" value="Search"></form>
                                </div>
                            </li> --}}

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>