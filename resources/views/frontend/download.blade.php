@extends('layouts.frontend_app')


@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset('frontend/images/ac.jpg') }})";>
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Resources</strong>
            <h2>Our Downloads</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Our Downloads</li>
            </ul>
        </div>
    </div>
</section>
<section class="inner-downloads sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Resources</span>
            <h2><strong>Our</strong> Downloads</h2>
        </div>
        <div class="inner-downloads-content">
            <div class="row">
                @foreach($downloads as $item)
                <div class="col-lg-4 col-12">
                    <div class="inner-downloads-single">
                        <a href="{{ route('frontend.download_file',$item->id) }}">
                            <div class="inner-downloads-single-text">
                                <h3> {{ $item->title }}</h3>
                                <small>
                                    <strong>Upload Date : </strong>
                                    {{ date('d-M Y', strtotime($item->created_at)) }}
                                </small>
                            </div>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection