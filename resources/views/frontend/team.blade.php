@extends('layouts.frontend_app')

@section('seo_title')
Sukrapath Cooperation|Department And Team
@endsection
{{-- 
@section('seo_description')
{{ $service->seo_description }}
@endsection
@section('seo_keyword')
{{ $service->seo_keyword }}
@endsection --}}

@section('content')
<section class="inner-breadcrumb"
    style="background-image: url({{ asset(Storage::url($cover_image->team_cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>About Us</strong>
            <h2>Our Team</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Our Team</li>
            </ul>
        </div>
    </div>
</section>

<section class="inner-our-team sec-padding">
    <div class="container">
        @foreach ($department as $item)
        <div class="inner-our-team-bod">
            <div class="sec-title">
                <h2>{{ $item->department_name }}</h2>
            </div>
            <div class="row">
                @foreach ($item->team as $item)
                <div class="col-lg-4 col-12">
                    <div class="inner-our-team-single">
                        <div class="iots-img">
                            <img src="{{ asset(Storage::url($item->image)) }}" alt="">
                            <ul class="iots-social">
                                <li><a href="https://{{ $item->link_to_facebook }}"><i
                                            class="fab fa-facebook-f"></i></a></li>
                                <li><a href="https://{{ $item->link_to_twitter }}"><i class="fab fa-twitter"></i></a>
                                </li>
                                <li><a href="https://{{ $item->link_to_instagram }}"><i
                                            class="fab fa-instagram"></i></a></li>
                                <li><a href="https://{{ $item->link_to_linkedIn }}"><i class="fab fa-linkedin"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="iots-text">
                            <h3>{{ $item->full_name }}</h3>
                            <span>{{ $item->designation }}</span>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        @endforeach
    </div>
</section>
@endsection