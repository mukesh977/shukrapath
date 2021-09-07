@extends('layouts.frontend_app')
@section('seo_title')
{{ (!empty($news->seo_title))?$news->seo_title:'Sukrapath Cooperation| Single News' }}
@endsection

@section('seo_description')
{{ $news->seo_description }}
@endsection
@section('seo_keyword')
{{ $news->seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($news->cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Stay Updated</strong>
            <h2>Latest News</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li class="bread-link"><a href="{{ route('frontend.news') }}">News</a></li>
                <li>{{ $news->news_title }}</li>
            </ul>
        </div>
    </div>
</section>

<section class="inner-news-single sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="inner-news-single-left">
                    <div class="insl-top">
                        <img src="{{ asset(Storage::url($news->featured_image)) }}" alt="">
                        <h5>{{ $news->news_title }}</h5>
                    </div>
                    <div class="insl-meta">
                        <strong class="inslm-author"> <i class="far fa-user"></i>By Admin</strong>
                        <p>
                            <span class="inslm-date"><i
                                    class="fas fa-calendar-alt"></i>{{ date('M d Y', strtotime($news->created_at)) }}</span>
                        </p>
                    </div>
                    <div class="insl-text">
                        <p>{!! $news->first_paragraph !!}</p>
                    </div>
                    <div class="insl-highlight">
                        <p>{!! $news->highlighted_news !!}</p>
                    </div>
                    <div class="insl-text">
                        <p>{!! $news->second_paragraph !!}</p>
                    </div>
                    {{-- <div class="insl-tags-share">

                        <div class="insl-share">
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div> --}}
                </div>
            </div>
            <div class="col-lg-4">
                <div class="inner-news-single-right">
                    <div class="inner-news-single-related insr-item ">
                        <h5>Related News</h5>
                        @foreach ($related_news as $item)
                        <div class="insr-single">
                            <div class="insr-single-img">
                                <a href="#"> <img src="{{ asset(Storage::url($item->featured_image)) }}" alt=""></a>
                            </div>
                            <div class="insr-single-info">
                                <div class="insr-single-info-text">
                                    <h3><a
                                            href="{{ route('frontend.newsSingle', $item->news_url) }}">{{ substr($item->news_title,0,25) }}..</a>
                                    </h3>
                                    <span>{{ date('M d Y', strtotime($item->created_at)) }}</span>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="inner-news-single-advert insr-item">
                        <a href="#"><img src="{{ asset('frontend/images/nordea.jpg') }}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection