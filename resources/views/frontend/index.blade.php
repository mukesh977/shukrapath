@extends('layouts.frontend_app')

@section('seo_title')
{{ (!empty($homepage->seo_title))?$homepage->seo_title:'Sukrapath Cooperation| Homepage' }}
@endsection

@section('seo_description')
{{ $homepage->seo_description }}
@endsection
@section('seo_keyword')
{{ $homepage->seo_keyword }}
@endsection

@section('content')

<!-- BANNER -->
<section class="main-banner">
    <div class="main-banner-slider">
        @foreach ($sliders as $slider)
        <div class="main-banner-single" style="background-image: url({{ asset(Storage::url($slider->image)) }}); ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="main-banner-text">
                            <h2>{{ $slider->title }}</h2>
                            <p>{!! $slider->description !!}</p>
                            @if ($slider->button_caption)
                            <a href="{{ $slider->button_link }}" class="mbt-one"
                                target="_blank">{{ $slider->button_caption }}</a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>


<!-- WHY CHOOSE -->
<section class="main-why-choose sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Namaste</span>
            <h2><strong>Welcome to</strong> Sukrapath</h2>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-12 col-12">
                <div class="main-why-choose-left">
                    <div class="mwcl-img">
                        <div class="mwcli-single">
                            <img src="{{ asset(Storage::url($aboutUs->first_featured_image)) }}" alt="">
                            <div class="mwcl-overlay"></div>
                        </div>
                        <div class="mwcli-single">
                            <img src="{{ asset(Storage::url($aboutUs->second_featured_image)) }}" alt="">
                            <div class="mwcl-overlay"></div>
                        </div>
                    </div>

                    <div class="mwcl-deco">
                        <p>{!! str_replace(',', '<br />', $aboutUs->image_text) !!}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12  col-12">
                <div class="main-why-choose-right">
                    <div class="mwcr-text">
                        <p>{!! $aboutUs->description !!}</p>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->first_feature_image !!}</span>
                                    <h4> {{ $aboutUs->first_feature }}</h4>
                                    <p>{!! $aboutUs->first_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->second_feature_image !!}</span>
                                    <h4> {{ $aboutUs->second_feature }}</h4>
                                    <p>{!! $aboutUs->second_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->third_feature_image !!}</span>
                                    <h4> {{ $aboutUs->third_feature }}</h4>
                                    <p>{!! $aboutUs->third_description !!}</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="mwcr-item">
                                    <span>{!! $aboutUs->forth_feature_image !!}</span>
                                    <h4> {{ $aboutUs->forth_feature }}</h4>
                                    <p>{!! $aboutUs->forth_description !!}</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- MESSAGE FROM  -->
<section class="main-message sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Our Story</span>
            <h2><strong>Message </strong> from Sukrapath</h2>
        </div>
        <div class="main-message-inner">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                @foreach ($message_from_board as $item)
                <li class="nav-item">
                    <a class="nav-link {{ ($loop->first)?'active':'' }}" id="pills-m-{{ $loop->iteration }}-tab"
                        data-toggle="pill" href="#pills-m-{{ $loop->iteration }}" role="tab"
                        aria-controls="pills-m-{{ $loop->iteration }}"
                        aria-selected="{{ ($loop->first)?'true':'false' }}">
                        <div class="mmi-author">
                            <img src="{{ asset(Storage::url($item->image)) }}" alt="profile.jpeg">
                            <h4>{{ $item->author }}</h4>
                            <span>{{ $item->designation }}</span>
                        </div>
                    </a>
                </li>
                @endforeach
            </ul>
            <div class="tab-content" id="pills-tabContent">
                @foreach ($message_from_board as $item)
                <div class="tab-pane fade {{ ($loop->first)?'show active':'' }}" id="pills-m-{{ $loop->iteration }}"
                    role="tabpanel" aria-labelledby="pills-m-{{ $loop->iteration }}-tab">
                    <div class="mmi-text">
                        {!! $item->description !!}
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>


<!-- GET IN TOUCH -->
<section class="main-get-touch sec-padding"
    style="background-image: url({{ asset(Storage::url($homepage->banner_image)) }});">
    <div class="container">
        <div class="main-get-touch-text">
            <p>{!! $homepage->banner_description !!}</p>
            <a href="{{ $homepage->banner_button_link }}">{{ $homepage->banner_button_name }}</a>
        </div>
    </div>
</section>


<!-- SERVICES -->
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
                        aria-controls="pills-{{ $loop->iteration }}" aria-selected="true">{{ $item->name }}</a>
                </li>
                @endforeach
            </ul>
            <div class="tab-content" id="pills-tabContent">
                @foreach ($services as $item)
                <div class="tab-pane fade {{ ($loop->first)?'show active':'' }}" id="pills-{{ $loop->iteration }}"
                    role="tabpanel" aria-labelledby="pills-{{ $loop->iteration }}-tab">
                    <div class="main-services-content-inner">
                        <div class="row">
                            @foreach ($item->service as $item)
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="main-services-content-single">
                                    <div class="mscs-img">
                                        <a href="{{ route('frontend.viewServices',$item->slug) }}"> <img
                                                src="{{ asset(Storage::url($item->featured_image)) }}" alt=""></a>
                                    </div>
                                    <div class="mscs-text">
                                        <h4><a
                                                href="{{ route('frontend.viewServices',$item->slug) }}">{{ $item->title }}</a>
                                        </h4>
                                        <span><a href="{{ route('frontend.viewServices',$item->slug) }}"><i
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


<!-- COUNTER -->
<section class="main-counter sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-6">
                <div class="main-counter-single">
                    <i class="far fa-gem"></i>
                    <h2 class="number years">{{ $aboutUs->years_of_experience }}</h2>
                    <h3>Years</h3>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="main-counter-single">
                    <i class="fas fa-user-friends"></i>
                    <h2 class="number users">{{ $aboutUs->happy_client }}</h2>
                    <h3>Happy Clients</h3>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="main-counter-single">
                    <i class="fas fa-university"></i>
                    <h2 class="number">{{ $aboutUs->no_of_branch }}</h2>
                    <h3>Branches</h3>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="main-counter-single">
                    <i class="fas fa-chart-line"></i>
                    <h2 class="number money">{{ $aboutUs->total_share }}</h2>
                    <h3>Total Shares</h3>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- FEATURES -->
<section class="main-features sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Products</span>
            <h2><strong>Our</strong> Features</h2>
        </div>
        <div class="main-features-slider">
            @foreach ($features as $item)
            <div class="main-features-single">
                <a href="{{ route('frontend.viewFeature',$item->slug) }}">
                    <span><img src="{{ asset(Storage::url($item->featured_image)) }}" alt="image.jpeg"></span>
                    <p>{{ $item->title }}</p>
                </a>
            </div>
            @endforeach
        </div>
    </div>
</section>


<!-- EMI & FAQ -->
<section class="main-emi-faq ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 mqf-faq col-md-12 col-12 ">
                <div class="main-faq sec-padding">
                    <div class="sec-title">
                        <span>FAQS</span>
                        <h2><strong>Your</strong> Answers</h2>
                    </div>
                    <ul>
                        @foreach ($faq as $item)
                        <li>
                            <button class="choose-collapsible ">{{ $item->question }}</button>
                            <div class="content">
                                <p>{!! $item->answer !!}</p>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 mqf-emi col-md-12 col-12 ">
                <div class="main-emi sec-padding">
                    <div class="sec-title">
                        <span>Calculate</span>
                        <h2><strong>EMI</strong> Calculator</h2>
                    </div>
                    <div class="main-emi-form">
                        <form action="#" _lpchecked="1">
                            <div class="row">
                                <div class="col-lg-12 col-12">
                                    <div class="form-group">
                                        <label> Loan Amount (NPR) </label><br>
                                        <span class="wpcf7-form-control-wrap adv_name"><input type="number" name=""
                                                id="principal" value="" size="40"
                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                aria-required="true" aria-invalid="false" placeholder="Enter Principal"
                                                style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-12">
                                    <div class="form-group half-wid-group hwg-left">
                                        <label> Interest Rate (%) </label><br>
                                        <span class="wpcf7-form-control-wrap adv_name"><input type="number" name=""
                                                id="rate" value="" size="40"
                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                aria-required="true" aria-invalid="false" placeholder="Enter Rate"
                                                style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;"></span>
                                    </div>
                                    <div class="form-group half-wid-group">
                                        <label>Duration (In Year) </label><br>
                                        <span class="wpcf7-form-control-wrap adv_number"><input type="number" name=""
                                                id="time" value="" size="40"
                                                class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel form-control "
                                                aria-required="true" aria-invalid="false"
                                                placeholder="Enter Duration"></span>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-6 text-center">
                                    <div class="button-holder-cnt">
                                        <p> <input type="submit" value="Submit"
                                                class="wpcf7-form-control wpcf7-submit btn btn-default"
                                                id="calc_si">
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-6 emir">
                                    <div class="emi-result">
                                        <span class="result-title">Yearly EMI</span>
                                        <span class="result-value" id="si_result"></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- GALLERY -->
<section class="main-gallery sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="sec-title">
                    <span>Gallery</span>
                    <h2><strong>Captured</strong> Memories</h2>
                </div>
            </div>
            <div class="col-lg-6 col-12 mgm">
                <div class="main-gallery-more">
                    <a href="{{ route('frontend.gallery') }}">View All</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-12 no-pad thumb-left">
                <div class="row">
                    <div class="col-lg-12 col-md-4 col-xs-6 thumb no-pad t-med">
                        <a href="{{ asset(Storage::url($first_image->image)) }}" class="fancybox" rel="ligthbox">
                            <div class="zoom-icon">
                                <i class="fab fa-instagram"></i>
                            </div>
                        </a>
                        <img src="{{ asset(Storage::url($first_image->image)) }}" class="zoom img-fluid " alt="">
                        <div class="overlay"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-xs-6 thumb no-pad t-small-1">
                        <a href="{{ asset(Storage::url($second_image->image)) }}" class="fancybox" rel="ligthbox">
                            <div class="zoom-icon">
                                <i class="fab fa-instagram"></i>
                            </div>
                        </a>
                        <img src="{{ asset(Storage::url($second_image->image)) }}" class="zoom img-fluid " alt="">
                        <div class="overlay"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-xs-6 thumb no-pad t-small-2">
                        <a href="{{ asset(Storage::url($third_image->image)) }}" class="fancybox" rel="ligthbox">
                            <div class="zoom-icon">
                                <i class="fab fa-instagram"></i>
                            </div>
                        </a>
                        <img src="{{ asset(Storage::url($third_image->image)) }}" class="zoom img-fluid " alt="">
                        <div class="overlay"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-12 no-pad thumb-right">
                <div class="col-lg-12 col-md-4 col-xs-6 thumb no-pad t-large">
                    <a href="{{ asset(Storage::url($forth_image->image)) }}" class="fancybox" rel="ligthbox">
                        <div class="zoom-icon">
                            <i class="fab fa-instagram"></i>
                        </div>
                    </a>
                    <img src="{{ asset(Storage::url($forth_image->image)) }}" class="zoom img-fluid " alt="">
                    <div class="overlay"></div>
                </div>
            </div>


        </div>
    </div>
</section>


<!-- TESTIMONIALS & EVENTS -->
<section class="main-testimonials-events">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-12 mte-test">
                <div class="main-testimonials sec-padding">
                    <div class="sec-title">
                        <span>Testimony</span>
                        <h2><strong>What Our</strong> Members Say</h2>
                    </div>
                    <div class="main-testimonials-slider">
                        @foreach ($testimonals as $item)
                        <div class="main-testimonials-single">
                            <div class="mts-text">
                                <p>{!! $item->description !!}</p>
                            </div>
                            <div class="mts-author">
                                <img src="{{ asset(Storage::url($item->image)) }}" alt="">
                                <h4>{{ $item->author }} <br> <span>{{ $item->designation }}</span></h4>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-12 mte-eve">
                <div class="main-events sec-padding">
                    <div class="sec-title">
                        <span>Stay Updated</span>
                        <h2><strong>Upcomming</strong> Events</h2>
                    </div>
                    <div class="main-events-inner">
                        @foreach ($events as $item)
                        <div class="main-events-inner-single">
                            <div class="event-date">
                                <h3><a href="#">{{ date('d', strtotime($item->date))  }}
                                        <span>{{ date('M', strtotime($item->date))  }}</span></a></h3>
                            </div>
                            <div class="event-content">
                                <h4>{{ $item->title }}</h4>
                                <ul>
                                    <li><i
                                            class="far fa-clock"></i>{{ Carbon\Carbon::parse($item->opening_time)->format('h:i A') }}-
                                        {{ Carbon\Carbon::parse($item->end_time)->format('h:i A') }}
                                    </li>
                                    <li><i class="fas fa-map-marker-alt"></i>{{ $item->location }}</li>
                                </ul>
                            </div>
                            {{-- <div class="event-join">
                                <a class="default-btn" href="#">join now</a>
                            </div> --}}
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- NEWS -->
<section class="main-news sec-padding">
    <div class="container">
        <div class="sec-title">
            <span>Stay Updated</span>
            <h2><strong>Latest</strong> News</h2>
        </div>
        <div class="main-news-slider">
            @foreach ($news as $item)
            <div class="main-news-single">
                <div class="mns-img">
                    <a href="{{ route('frontend.newsSingle',$item->news_url) }}"><img
                            src="{{ asset(Storage::url($item->featured_image)) }}" alt="image.jpeg"></a>
                </div>
                <div class="mns-text">
                    <h4><a href="{{ route('frontend.newsSingle',$item->news_url) }}">{{ $item->news_title }}</a></h4>
                    <div class="mnst-meta">
                        <ul>
                            <li class="mnstm-date"> <i
                                    class="fas fa-calendar-alt"></i>{{ date('d M Y', strtotime($item->created_at)) }}
                            </li>
                            <li class="mnstm-author"> <i class="far fa-user"></i> By Admin</li>
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>


<!-- BRANCHES -->
<section class="main-branches sec-padding" style="background-image: url({{ asset('frontend/images/map.jpg') }});">
    <div class="container">
        <div class="sec-title">
            <span>Find Our</span>
            <h2><strong>Service</strong>&nbsp;Center</h2>
        </div>
        <div class="main-branches-slider">
            @foreach ($branches as $item)
            <div class="main-branches-single">
                <h3>{{ $item->title }}</h3>
                <ul>
                    <li><i class="far fa-envelope"></i><a href="mailto:{{ $item->email }}">{{ $item->email }}</a></li>
                    <li><i class="fas fa-map-marker-alt"></i>{{ $item->address }}</li>
                    <li><i class="fa fa-phone"></i>{{ $item->phone_no }}</li>
                </ul>
            </div>
            @endforeach
        </div>
    </div>
</section>


<!-- SOCIALS -->
<section class="main-socials">
    <div class="container">
        <div class="main-socials-inner">
            <img src="{{ asset(Storage::url($setting->institution_logo)) }}" alt="">
            <p>{!! $homepage->footer_description !!}</p>
            <ul>
                <li>
                    <a href="{{ $setting->institution_facebook_link }}" target="_blank" class="fb"><i
                            class="fab fa-facebook-f"></i></a>
                </li>
                <li>
                    <a href="{{ $setting->institution_instagram_link }}" target="_blank" class="ig"><i
                            class="fab fa-instagram"></i></a>
                </li>
                <li>
                    <a href="{{ $setting->institution_twitter_link }}" target="_blank" class="tw"><i
                            class="fab fa-twitter"></i></a>
                </li>
                <li>
                    <a href="{{ $setting->institution_linkedIn_link }}" target="_blank" class="ld"><i
                            class="fab fa-linkedin-in"></i></a>
                </li>
                <li>
                    <a href="{{ $setting->institution_youtube_link }}" target="_blank" class="gp"><i
                            class="fab fa-youtube"></i></a>
                </li>
            </ul>
        </div>
    </div>
</section>
@endsection

@section('script')
<script>
    var p, t, r, SI;
            
    $('#calc_si').on('click', function(e){
        e.preventDefault();
        
        p = $('#principal').val();
        t = $('#time').val();
        r = $('#rate').val();
        si = (p*t*r) / 100;

        $('#si_result').text(si);
    })
</script>
@endsection