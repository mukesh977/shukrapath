@extends('layouts.frontend_app')

@section('seo_title')
{{ (!empty($service->seo_title))?$service->seo_title:'Sukrapath Cooperation|Service Single' }}
@endsection

@section('seo_description')
{{ $service->seo_description }}
@endsection
@section('seo_keyword')
{{ $service->seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($service->cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Our Services</strong>
            <h2>{{ $service->title }}</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Services</li>
            </ul>
        </div>
    </div>
</section>


<section class="inner-services-single sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="inner-services-single-left">
                    <div class="issl-content">
                        <div class="row">
                            <div class="col-lg-7 col-12">
                                <div class="sec-title">
                                    <span>{{ $service->service_category->name }}</span>
                                    <h2>{{ $service->title }}</h2>
                                </div>
                                <div class="issl-text">
                                    <p>{!! $service->first_description !!}</p>
                                    <a href="{{ route('frontend.apply.create') }}">Apply Now</a>
                                </div>
                            </div>
                            <div class="col-lg-5 col-12">
                                <div class="issl-img">
                                    @if($service->featured_image)
                                    <img src="{{ asset(Storage::url($service->featured_image)) }}" alt="imag.jpeg">
                                    @else
                                    <img src="{{ asset('default_images/logo.jpg') }}" alt="imag.jpeg">
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="issl-list">
                        <h4>Features/Benefits</h4>
                        <ul>
                            {!! $service->second_description !!}
                        </ul>
                    </div>
                    <div class="issl-list">
                        <h4>Requirements</h4>
                        <ul>
                            {!! $service->third_description !!}
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-12">
                <div class="inner-services-single-right">
                    <div class="issr-related issr-mb">
                        <h4>Related Services</h4>
                        <ul>
                            @foreach ($related_service as $item)
                            <li><a href="{{ route('frontend.viewServices',$item->slug) }}">{{ $item->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="issr-btns  issr-mb">
                        <a href="#">
                            <div class="issrb-content">
                                <div class="issrb-text">
                                    <span>Calculate Your EMI</span>
                                    <h5>EMI Calculator</h5>
                                </div>
                                <div class="issrb-icon">
                                    <img src="{{ asset('frontend/images/calculator.png') }}" alt="image.jpeg">
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="issr-btns  issrbi-bg issr-mb">
                        <a href="{{ route('frontend.news') }}">
                            <div class="issrb-content">
                                <div class="issrb-text">
                                    <span>Get Latest Updates</span>
                                    <h5>Latest News</h5>
                                </div>
                                <div class="issrb-icon ">
                                    <img src="{{ asset('frontend/images/newspaper.png') }}" alt="image.jpeg">
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="issr-btns  issr-mb">
                        <a href="{{ route('frontend.contactUs') }}">
                            <div class="issrb-content">
                                <div class="issrb-text">
                                    <span>Get in Touch</span>
                                    <h5>Contact Us</h5>
                                </div>
                                <div class="issrb-icon">
                                    <img src="{{ asset('frontend/images/contact.png') }}" alt="image.jpeg">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!--<div class="issr-offers">-->
                    <!--    <a href="#">-->
                    <!--        <img src="images/nordea.jpg" alt="">-->
                    <!--    </a>-->
                    <!--</div>-->
                </div>
            </div>
        </div>
    </div>
</section>
@endsection