@extends('layouts.frontend_app')

@section('seo_title')
{{ (!empty($cover_image->contact_us_seo_title))?$cover_image->contact_us_seo_title:'Sukrapath Cooperation| Contact Us' }}
@endsection

@section('seo_description')
{{ $cover_image->contact_us_seo_description }}
@endsection
@section('seo_keyword')
{{ $cover_image->contact_us_seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb"
    style="background-image: url({{ asset(Storage::url($cover_image->contact_us_cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Contact Us</strong>
            <h2>Get in touch</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Contact Us</li>
            </ul>
        </div>
    </div>
</section>

<section class="inner-contact sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Contact Us</span>
            <h2><strong>Head</strong> Office</h2>
        </div>
        <div class="inner-contact-details">
            <div class="row">
                <div class="col-lg-4 col-12">
                    <div class="inner-contact-single">
                        <div class="ics-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="ics-text">
                            <span>Visit Us</span>
                            <h4>{{ $setting->institution_address }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="inner-contact-single">
                        <div class="ics-icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="ics-text">
                            <span>Call Us</span>
                            <h4>{{ $setting->institution_phone_number }}, {{ $setting->institution_mobile_number }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="inner-contact-single">
                        <div class="ics-icon">
                            <i class="far fa-envelope"></i>
                        </div>
                        <div class="ics-text">
                            <span>Mail Us</span>
                            <h4><a href="mailto:{{ $setting->institution_email }}">{{ $setting->institution_email }}</a>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="inner-contact-form-map">
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="inner-contact-form">
                        <h2>Drop us a Message</h2>
                        @if( session()->has('success_msg') )
                        <div class="alert alert-success" role="alert">
                            <h4>{{ session()->get('success_msg') }}</h4>
                        </div>
                        @elseif( session()->has('error_msg') )
                        <div class="alert alert-danger" role="alert">
                            <h4>{{ session()->get('error_msg') }}</h4>
                        </div>
                        @else
                        @endif
                        <form action="{{ route('frontend.contactUs_store') }}" method="POST">
                            @csrf
                            <label for="name">Your Name <span>(Required)</span></label>
                            <input type="text" id="name" name="name" style="width: 100%;" required>

                            <label for="email">Your E-mail <span>(Required)</span></label>
                            <input type="text" id="email" name="email" style="width: 100%;" required>

                            <label for="phone">Phone</label>
                            <input type="number" id="phone" name="phone" style="width: 100%;" required>

                            <label for="message">Your Message</label>
                            <textarea id="message" name="message" style="height:120px; width:100%;" required></textarea>

                            <input type="submit" value="Submit">
                        </form>
                    </div>
                </div>
                <div class="col-lg-6 col-12 icm">
                    <div class="inner-contact-map">
                        {!! $setting->institution_google_map !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="inner-contact-branches">
            <div class="sec-title">
                <span>Find Our</span>
                <h2><strong>Service</strong>&nbsp;Center</h2>
            </div>
            <div class="row">
                @foreach ($branch as $item)
                <div class="col-lg-3 col-12">
                    <div class="main-branches-single">
                        <h3>{{ $item->title }}</h3>
                        <ul>
                            <li><i class="fas fa-envelope"></i>{{ $item->email }}</li>
                            <li><i class="fas fa-map-marker-alt"></i>{{ $item->address }}</li>
                            <li><i class="fa fa-phone"></i> {{ $item->phone_no }}</li>

                        </ul>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection