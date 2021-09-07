
@extends('layouts.frontend_app')

@section('seo_title')
Sukrapath Cooperative| Calendar
@endsection
@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset(Storage::url($calendar->image)) }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Resources</strong>
            <h2>Our Calendar</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Our Calendar</li>
            </ul>
        </div>
    </div>
</section>


<section class="inner-calendar sec-padding">
    <div class="container">
        <div class="inner-calendar-text">
            <h4>{{ $calendar->month }}</h4>
            <a href="{{ route('frontend.calendar.download') }}" title="Click here to download annual calendar"><i class="fas fa-download"></i>Download Calendar</a>
        </div>
        <div class="inner-calendar-img">
            {!! $calendar->image !!}
        </div>
    </div>
</section>
@endsection