@extends('layouts.frontend_app')

@section('seo_title')
Sukrapath Cooperative| Gallery| {{ $album->category_name }}
@endsection
@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($album->thumbnail_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Captured Memories</strong>
            <h2>Our Gallery</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li class="bread-link"> Our Gallery</a></li>
                <li>{{ $album->category_name }}</li>
            </ul>
        </div>
    </div>
</section>

<section class="inner-gallery-single sec-padding">
    <div class="container">
        <div class="row">
            @foreach ($photos as $item)
            <div class="col-lg-3 col-md-4 col-12 col-xs-6 thumb">
                <a href="{{ asset(Storage::url($item->image)) }}" class="fancybox" rel="ligthbox">
                    <div class="zoom-icon">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </div>
                </a>
                <img src="{{ asset(Storage::url($item->image))}}" class="zoom img-fluid " alt="">
                <div class="overlay"></div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection