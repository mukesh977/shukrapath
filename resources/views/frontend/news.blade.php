@extends('layouts.frontend_app')

@section('seo_title')
{{ (!empty($cover_image->news_seo_title))?$cover_image->news_seo_title:'Sukrapath Cooperation|News' }}
@endsection

@section('seo_description')
{{ $cover_image->news_seo_description }}
@endsection
@section('seo_keyword')
{{ $cover_image->news_seo_keyword }}
@endsection

@section('content')
<section class="inner-breadcrumb"
    style="background-image: url({{ asset(Storage::url($cover_image->news_cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Stay Updated</strong>
            <h2>Latest News</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>News</li>
            </ul>
        </div>
    </div>
</section>


<section class="inner-news sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Stay Updated</span>
            <h2><strong>Latest</strong> News</h2>
        </div>
        <div class="inner-news-content">
            <div class="row">
                @foreach ($news as $item)
                <div class="col-lg-4">
                    <div class="main-news-single">
                        <div class="mns-img">
                            <a href="{{ route('frontend.newsSingle',$item->news_url) }}"><img
                                    src="{{ asset(Storage::url($item->featured_image)) }}" alt=""></a>
                        </div>
                        <div class="mns-text">
                            <h4><a href="{{ route('frontend.newsSingle',$item->news_url) }}">{{ $item->news_title }}</a>
                            </h4>
                            <div class="mnst-meta">
                                <ul>
                                    <li class="mnstm-date"> <i class="fas fa-calendar-alt"></i>
                                        {{ date('M d Y', strtotime($item->created_at)) }}</li>
                                    <li class="mnstm-author"> <i class="far fa-user"></i> By Admins</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection