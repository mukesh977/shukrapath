@extends('layouts.frontend_app')
@section('seo_title')
{{ (!empty($page->seo_title))?$page->seo_title:'Shikhar Cooperation| Dynamic Page' }}
@endsection
@section('seo_description')
{{ $page->news_seo_description }}
@endsection
@section('seo_keyword')
{{ $page->news_seo_keyword }}
@endsection
@section('content')

@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($page->featured_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <h2>{{ $page->page_title }}</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>{{ $page->page_title }}</li>
            </ul>
        </div>
    </div>
</section>



<section class="inner-services-single sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-services-single-left">
                    <div class="issl-top inner-dynamic-pages">
                        <div class="sec-title">
                            <h3>{{ $page->page_title }}</h3>
                            <div class="devider">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <p>
                            {!! $page->description !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection