@extends('layouts.frontend_app')
@section('seo_title')
{{ (!empty($aboutUs->seo_title))?$aboutUs->seo_title:'Sukrapath Cooperation|About Us' }}
@endsection

@section('seo_description')
{{ $aboutUs->seo_description }}
@endsection
@section('seo_keyword')
{{ $aboutUs->seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($aboutUs->cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>About Us</strong>
            <h2>Introduction</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Introduction</li>
            </ul>
        </div>
    </div>
</section>

<section class="main-why-choose sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Namaste</span>
            <h2><strong>Welcome to</strong> Sukrapath</h2>
        </div>
        {{-- <div class="inner-why-choose-text">
            <p>{!! $aboutUs-> !!}</p>
        </div> --}}

        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="main-why-choose-left">
                    <div class="mwcl-img">
                        <div class="mwcli-single">
                            <img src="{{ asset(Storage::url($aboutUs->first_featured_image)) }}" alt="">
                            <div class="mwcl-overlay"></div>
                        </div>
                        <div class="mwcli-single">
                            <img src="{{ asset(Storage::url($aboutUs->second_featured_image)) }}" alt="">
                            <div class="mwcl-overlay"></div>
                        </div>
                    </div>

                    <div class="mwcl-deco">
                        <p>{!! str_replace(',', '<br />', $aboutUs->image_text) !!}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-12">
                <div class="main-why-choose-right">
                    <div class="mwcr-text">
                        <p>{!! $aboutUs->description !!}</p>
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->first_feature_image !!}</span>
                                    <h4> {{ $aboutUs->first_feature }}</h4>
                                    <p>{!! $aboutUs->first_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->second_feature_image !!}</span>
                                    <h4> {{ $aboutUs->second_feature }}</h4>
                                    <p>{!! $aboutUs->second_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->third_feature_image !!}</span>
                                    <h4> {{ $aboutUs->third_feature }}</h4>
                                    <p>{!! $aboutUs->third_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->forth_feature_image !!}</span>
                                    <h4> {{ $aboutUs->forth_feature }}</h4>
                                    <p>{!! $aboutUs->forth_description !!}</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="inner-about-us-misvis sec-padding">
    <div class="container">
        <div class="inner-about-us-mission">
            <div class="row">
                <div class="col-lg-7 col-12">
                    <div class="inner-about-us-vismis">
                        <div class="sec-title">
                            <span>What we aim to</span>
                            <h2><strong>Our</strong> Mission</h2>
                        </div>
                        <p>{!! $aboutUs->our_mission !!}</p>
                    </div>
                </div>
                <div class="col-lg-5 col-12">
                    <div class="inner-about-us-vismis-img">
                        <img src="{{ asset(Storage::url($aboutUs->mission_image)) }}" alt="image.jpeg">
                    </div>
                </div>
            </div>
        </div>
        <div class="inner-about-us-vision">
            <div class="row">
                <div class="col-lg-5 col-12">
                    <div class="inner-about-us-vismis-img">
                        <img src="{{ asset(Storage::url($aboutUs->vision_image)) }}" alt="image.jpeg">
                    </div>
                </div>
                <div class="col-lg-7 col-12">
                    <div class="inner-about-us-vismis">
                        <div class="sec-title">
                            <span>What we believe in</span>
                            <h2><strong>Our</strong> Vision</h2>
                        </div>
                        <p>{!! $aboutUs->our_vision !!}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection