@extends('layouts.frontend_app')

@section('seo_title')
{{ (!empty($feature->seo_title))?$feature->seo_title:'Sukrapath Cooperation|Service Single' }}
@endsection

@section('seo_description')
{{ $feature->seo_description }}
@endsection
@section('seo_keyword')
{{ $feature->seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($feature->cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Our Features</strong>
            <h2>{{ $feature->title }}</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>{{ $feature->title }}</li>
            </ul>
        </div>
    </div>
</section>


<section class="inner-features-single sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="inner-features-single-left">
                    <div class="ifsl-content">
                        <div class="row">
                            <div class="col-lg-8 col-12">
                                <div class="sec-title">
                                    <span>Features</span>
                                    <h2>{{ $feature->title }}</h2>
                                </div>
                                <div class="ifsl-text">
                                    <p>{!! $feature->description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-12">
                                <div class="issl-img">
                                    <span> <img src="{{ asset(Storage::url($feature->featured_image)) }}"
                                            alt="image.jpeg"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ifsl-list">
                        <h4>{{ $feature->subtitle }}</h4>
                        <ul>
                            {!! $feature->second_description !!}
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-12">
                <div class="inner-features-single-right">
                    <div class="ifsr-related ifsr-mb">
                        <h4>Other Features</h4>
                        <ul>
                            @foreach ($related_feature as $item)
                            <li><a href="{{ route('frontend.viewFeature', $item->slug) }}">{{ $item->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="ifsr-btns  ifsr-mb">
                        <a href="#">
                            <div class="ifsrb-content">
                                <div class="ifsrb-text">
                                    <span>Calculate Your EMI</span>
                                    <h5>EMI Calculator</h5>
                                </div>
                                <div class="ifsrb-icon">
                                    <img src="{{ asset('frontend/images/calculator.png') }}" alt="">
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="ifsr-btns  ifsrbi-bg ifsr-mb">
                        <a href="{{ route('frontend.news') }}">
                            <div class="ifsrb-content">
                                <div class="ifsrb-text">
                                    <span>Get Latest Updates</span>
                                    <h5>Latest News</h5>
                                </div>
                                <div class="ifsrb-icon ">
                                    <img src="{{ asset('frontend/images/newspaper.png') }}" alt="">
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="ifsr-btns  ifsr-mb">
                        <a href="{{ route('frontend.contactUs') }}">
                            <div class="ifsrb-content">
                                <div class="ifsrb-text">
                                    <span>Get in Touch</span>
                                    <h5>Contact Us</h5>
                                </div>
                                <div class="ifsrb-icon">
                                    <img src="{{ asset('frontend/images/contact.png') }}" alt="">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!--<div class="ifsr-offers">-->
                    <!--    <a href="#">-->
                    <!--        <img src="{{ asset('frontend/images/nordea.jpg') }}" alt="">-->
                    <!--    </a>-->
                    <!--</div>-->
                </div>
            </div>
        </div>
    </div>
</section>

@endsection