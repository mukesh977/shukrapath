@extends('layouts.frontend_app')

@section('seo_title')
Sukrapath Cooperation|Gallery
@endsection

@section('content')
<section class="inner-breadcrumb"
    style="background-image: url({{ asset(Storage::url($cover_image->gallery_cover_image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Captured Memories</strong>
            <h2>Our Gallery</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Our Gallery</li>
            </ul>
        </div>
    </div>
</section>

<section class="inner-gallery sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Gallery</span>
            <h2><strong>Captured</strong> Memories</h2>
        </div>
        <div class="row">
            @foreach ($album as $item)
            <div class="col-lg-4 col-12">
                <div class="inner-gallery-item">
                    <a href="{{ route('frontend.gallery_single',$item->id) }}">
                        <div class="igi-img">
                            <img src="{{ asset(Storage::url($item->thumbnail_image)) }}" alt="img.jpeg">
                        </div>
                        <div class="igi-text">
                            <h3>{{ $item->category_name }}</h3>
                        </div>
                    </a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

@endsection