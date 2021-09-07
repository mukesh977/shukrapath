@extends('layouts.frontend_app')
@section('seo_title')
Sukrapath Cooperative| Services
@endsection

@section('content')
<section class="inner-breadcrumb"
    style="background-image: url({{ asset(Storage::url($cover_image->service_cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Products</strong>
            <h2>Our Services & Features</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Services</li>
            </ul>
        </div>
    </div>
</section>

<section class="main-services sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Products</span>
            <h2><strong>Our</strong> Services</h2>
        </div>

        <div class="main-services-content">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                @foreach ($services as $item)
                <li class="nav-item">
                    <a class="nav-link {{ ($loop->first)?'active':'' }}" id="pills-{{ $loop->iteration }}-tab"
                        data-toggle="pill" href="#pills-{{ $loop->iteration }}" role="tab"
                        aria-controls="pills-{{ $loop->iteration }}"
                        aria-selected="{{ ($loop->first)?'true':'false' }}">{{ $item->name }}</a>
                </li>
                @endforeach
            </ul>
            <div class="tab-content" id="pills-tabContent">
                @foreach ($services as $item)
                <div class="tab-pane fade {{ ($loop->first)?'show active':'' }}" id="pills-{{ $loop->iteration }}"
                    role="tabpanel" aria-labelledby="pills-{{ $loop->iteration }}-tab">
                    <div class="main-services-content-inner">
                        <div class="row">
                            @foreach ($item->service as $service_item)
                            <div class="col-lg-3">
                                <div class="main-services-content-single">
                                    <div class="mscs-img">
                                        @if($service_item->featured_image)
                                        <a href="{{ route('frontend.viewServices',$service_item->slug) }}"> <img
                                                src="{{ asset(Storage::url($service_item->featured_image)) }}" alt="image.jpeg"></a>
                                        @else
                                        <a href="{{ route('frontend.viewServices',$service_item->slug) }}"> <img
                                                src="{{ asset('default_images/logo.jpg') }}" alt="image.jpeg"></a>
                                        @endif
                                    </div>
                                    <div class="mscs-text">
                                        <h4><a
                                                href="{{ route('frontend.viewServices',$service_item->slug) }}">{{ $service_item->title }}</a>
                                        </h4>
                                        <span><a href="{{ route('frontend.viewServices',$service_item->slug) }}"><i
                                                    class="far fa-arrow-alt-circle-right"></i>Learn
                                                More</a></span>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>


<section class="inner-features sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Products</span>
            <h2><strong>Our</strong> Features</h2>
        </div>
        <div class="inner-features-content">
            <div class="row">
                @foreach ($features as $item)
                <div class="col-lg-3">
                    <div class="main-features-single">
                        <a href="{{ route('frontend.viewFeature',$item->slug) }}">
                            @if( $item->featured_image == null )
                            <span><img src="{{ asset('frontend/default_images/logo.jpg') }}" alt=""></span>
                            @else
                            <span><img src="{{ asset(Storage::url($item->featured_image)) }}" alt=""></span>
                            @endif
                            <p>{{ $item->title }}</p>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>






        </div>
    </div>
</section>
{{-- 
<section class="inner-services-advert">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="inner-services-advert-img">
                    <img src="{{ asset(Storage::url('frontend/images/loan.png')) }}" alt="">
</div>
</div>
<div class=" col-lg-7 isat">
    <div class="inner-services-advert-text">
        <h3>Free Home Loan Help & Guildelines</h3>
        <p>Our advisors will help you find the right home loan for your need.</p>
        <a href="#">Get In Touch</a>
    </div>
</div>
</div>
</div>
</section> --}}
@endsection