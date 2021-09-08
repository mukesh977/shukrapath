@extends('layouts.frontend_app')

@section('seo_title')
Sukrapath Cooperative| Apply
@endsection
@section('content')
<section class="inner-breadcrumb" style="background-image: url({{ asset('frontend/images/ac.jpg') }});">
    <div class="container">
        <div class="inner-breadcrumb-text">
            <strong>Apply Online</strong>
            <h2>Application Form</h2>
            <ul>
                <li class="bread-link"><a href="{{ route('frontend_index') }}"><i class="fas fa-home"></i> Home</a></li>
                <li>Apply Online</li>
            </ul>
        </div>
    </div>
</section>


<section class="inner-apply ">
    <div class="container-fluid">
        <div class="inner-apply-form">
            <div class="iaf-title">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="iaft-left">
                            <img src="{{ asset('frontend/images/logo.png') }}" alt="logo.png">

                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="iaft-middle">
                            <h2> Sukrapath Multipurpose <br> Co-opertaive Limited</h2>
                            <p>Sahakari Bhawan, Pyukha-22, Newroad, Kathmandu, Nepal</p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="iaft-right">
                            <span>दर्ता न:३७०५/०६७/०६८ </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="iaf-body">
                <form action="{{ route('frontend.apply.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="iafb-desc">
                        <h4>Account Opening Form</h4>
                        <h3>खाता खोल्ने फारम </h3>
                    </div>
                    <div class="iafb-error">
                        @if ($errors->any())
                        <div class="iafb-erro-list">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li class="text-danger">
                                    {{$error}}
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                    </div>
                    @if( session()->has('success_msg') )
                    <div class="alert alert-success" role="alert">
                        <h4>{{ session()->get('success_msg') }}</h4>
                    </div>
                    @elseif( session()->has('error_msg') )
                    <div class="alert alert-danger" role="alert">
                        <h4>{{ session()->get('error_msg') }}</h4>
                    </div>
                    @else
                    @endif
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Personal Information of Account Holder (व्यक्तिगत खातावालाको विवरण)</h4>
                        <div class="iafbs-inner">
                            <!-- NAME -->
                            <div class="iafb-name">
                                <strong>Account Holder's Name (खातावालाको नाम )</strong>
                                <p>In English (Please use Block Letters)(अंग्रेजीमा) <small>*</small></p>
                                <span class="wpcf7-form-control-wrap name">
                                    <input type="text" name="name" value="{{ old('name')?old('name'):'' }}" size="40"
                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                        aria-required="true" aria-invalid="false" placeholder="" autocomplete="off"
                                        required>
                                </span>
                            </div>
                            <!-- DETAILS -->
                            <div class=" iafb-details">
                                <!-- DOB -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>Date of Birth </span>
                                                <span>(जन्म मिती) </span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="iaf-right">
                                                <span class="wpcf7-form-control-wrap date_of_birth"><input type="date"
                                                        name="date_of_birth"
                                                        value="{{ old('date_of_birth')?old('date_of_birth'):'' }}"
                                                        size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""
                                                        required></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- FATHERS NAME -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>Father's Name </span>
                                                <span>(बाबुको नाम) </span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="iaf-right">
                                                <span class="wpcf7-form-control-wrap father_name"><input type="text"
                                                        name="father_name"
                                                        value="{{ old('father_name')?old('father_name'):'' }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" autocomplete="off"
                                                        required></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- MOTHERS NAME -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>Mother's Name </span>
                                                <span>(आमाको नाम)</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="iaf-right">
                                                <span class="wpcf7-form-control-wrap mother_name"><input type="text"
                                                        name="mother_name"
                                                        value="{{ old('mother_name')?old('mother_name'):'' }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""
                                                        autocomplete="off" required></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- GRANDFATHERS NAME -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>GrandFather's Name </span>
                                                <span>(बाजेको नाम) </span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="iaf-right">
                                                <span class="wpcf7-form-control-wrap grandfather_name"><input
                                                        type="text" name="grandfather_name"
                                                        value="{{ old('grandfather_name')?old('grandfather_name'):'' }}"
                                                        size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""
                                                        autocomplete="off" required></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- SPOUSE NAME -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>Spouse's Name </span>
                                                <span>(पती / पत्नीको नाम) </span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="iaf-right">
                                                <span class="wpcf7-form-control-wrap spouse_name"><input type="text"
                                                        name="spouse_name"
                                                        value="{{ old('spouse_name')?old('spouse_name'):'' }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""
                                                        autocomplete="off"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- CITIZENSHIP ADDRESS -->
                                <div class="row">
                                    <div class="col-lg-4 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-7 iafl">
                                                    <div class="iaf-left">
                                                        <span>Citizenship Permanent Address </span>
                                                        <span>(नागरिकता अनुसार ठेगाना) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="iaf-right">
                                                        <span
                                                            class="wpcf7-form-control-wrap citizenship_permanent_address"><input
                                                                type="text" name="citizenship_permanent_address"
                                                                value="{{ old('citizenship_permanent_address')?old('citizenship_permanent_address'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 pdd">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Zone / State </span>
                                                        <span>( अञ्चल / प्रदेश) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="iaf-right">
                                                        <span
                                                            class="wpcf7-form-control-wrap citizenship_zone_state"><input
                                                                type="text" name="citizenship_zone_state"
                                                                value="{{ old('citizenship_zone_state')?old('citizenship_zone_state'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 pdd">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-3 iafl">
                                                    <div class="iaf-left iafl-des">
                                                        <span>District </span>
                                                        <span>(जिल्ला) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-9">
                                                    <div class="iaf-right">
                                                        <span
                                                            class="wpcf7-form-control-wrap citizenship_district"><input
                                                                type="text" name="citizenship_district"
                                                                value="{{ old('citizenship_district')?old('citizenship_district'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 pdl">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-9 iafl">
                                                    <div class="iaf-left">
                                                        <span>VDC/RM/MC Ward No </span>
                                                        <span>(गा.वि.स / गा.पा / न.पा. वडा न) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="iaf-right">
                                                        <span
                                                            class="wpcf7-form-control-wrap citizenship_rm_mc_ward"><input
                                                                type="text" name="citizenship_rm_mc_ward"
                                                                value="{{ old('citizenship_rm_mc_ward')?old('citizenship_rm_mc_ward'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- PERMANENT ADDRESS -->
                                <div class="row">
                                    <div class="col-lg-3 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-7 iafl">
                                                    <div class="iaf-left">
                                                        <span>Permanent Address </span>
                                                        <span>(स्थायी ठेगाना)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap permanent_address"><input
                                                                type="text" name="permanent_address"
                                                                value="{{ old('permanent_address')?old('permanent_address'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9 pdl">
                                        <div class="row">
                                            <div class="col-lg-3 pdr">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des">
                                                                <span>State </span>
                                                                <span>(प्रदेश)</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap permanent_state"><input
                                                                        type="text" name="permanent_state"
                                                                        value="{{ old('permanent_state')?old('permanent_state'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 pdd">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des">
                                                                <span>District </span>
                                                                <span>(जिल्ला) </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap permanent_district"><input
                                                                        type="text" name="permanent_district"
                                                                        value="{{ old('permanent_district')?old('permanent_district'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 pdd">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-7 iafl">
                                                            <div class="iaf-left">
                                                                <span>RM/MC Ward No. </span>
                                                                <span>(गा.पा / न.पा. वडा न) </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap permanent_rm_mc_ward"><input
                                                                        type="text" name="permanent_rm_mc_ward"
                                                                        value="{{ old('permanent_rm_mc_ward')?old('permanent_rm_mc_ward'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 pdl">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des">
                                                                <span> Tole</span>
                                                                <span> (टोल)</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap permanent_tole"><input
                                                                        type="text" name="permanent_tole"
                                                                        value="{{ old('permanent_tole')?old('permanent_tole'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- TEMPORARY ADDRESS -->
                                <div class="row">
                                    <div class="col-lg-3 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-7 iafl">
                                                    <div class="iaf-left">
                                                        <span>Present Address </span>
                                                        <span>(हालको ठेगाना)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap temporary_address"><input
                                                                type="text" name="temporary_address"
                                                                value="{{ old('temporary_address')?old('temporary_address'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9 pdl">
                                        <div class="row">
                                            <div class="col-lg-3 pdr">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des">
                                                                <span>State </span>
                                                                <span>(प्रदेश)</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap present_state"><input
                                                                        type="text" name="present_state"
                                                                        value="{{ old('present_state')?old('present_state'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 pdd">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des">
                                                                <span>District </span>
                                                                <span>(जिल्ला) </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap present_district"><input
                                                                        type="text" name="present_district"
                                                                        value="{{ old('present_district')?old('present_district'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 pdd">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-7 iafl">
                                                            <div class="iaf-left">
                                                                <span>RM/MC Ward No. </span>
                                                                <span>(गा.पा / न.पा. वडा न) </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap present_rm_mc_ward"><input
                                                                        type="text" name="present_rm_mc_ward"
                                                                        value="{{ old('present_rm_mc_ward')?old('present_rm_mc_ward'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 pdl">
                                                <div class=" iafbb-single">
                                                    <div class="row">
                                                        <div class="col-lg-3 iafl">
                                                            <div class="iaf-left iafl-des ">
                                                                <span>Tole </span>
                                                                <span> (टोल)</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-9">
                                                            <div class="iaf-right">
                                                                <span
                                                                    class="wpcf7-form-control-wrap present_tole"><input
                                                                        type="text" name="present_tole"
                                                                        value="{{ old('present_tole')?old('present_tole'):'' }}"
                                                                        size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder="" autocomplete="off"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- CITIZENSHIP DETAILS -->
                                <div class="row">
                                    <div class="col-lg-4 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Citizenship No. </span>
                                                        <span>(नागरिकता न) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap citizenship_no"><input
                                                                type="number" name="citizenship_no"
                                                                value="{{ old('citizenship_no')?old('citizenship_no'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 pdd">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Issued District</span>
                                                        <span>(जारी गर्ने जिल्ला) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span
                                                            class="wpcf7-form-control-wrap citizenship_issued_district"><input
                                                                type="text" name="citizenship_issued_district"
                                                                value="{{ old('citizenship_issued_district')?old('citizenship_issued_district'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 pdl">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Passport No. </span>
                                                        <span>(पासपोर्ट न) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap passport_no"><input
                                                                type="number" name="passport_no"
                                                                value="{{ old('passport_no')?old('passport_no'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- NATIONALITY  -->
                                <div class="row">
                                    <div class="col-lg-6 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-4 iafl">
                                                    <div class="iaf-left">
                                                        <span>Nationality </span>
                                                        <span>(राष्ट्रियता) </span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap nationality"><input
                                                                type="text" name="nationality"
                                                                value="{{ old('nationality')?old('nationality'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 pdl">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-4 iafl">
                                                    <div class="iaf-left">
                                                        <span>Occupation </span>
                                                        <span>(पेसा)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap occupation"><input
                                                                type="text" name="occupation"
                                                                value="{{ old('occupation')?old('occupation'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- CONTACT  -->
                                <div class="row">
                                    <div class="col-lg-4 pdr">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Contact No: Home </span>
                                                        <span>(सम्पर्क न) : (घर)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap contact_no_home"><input
                                                                type="number" name="contact_no_home"
                                                                value="{{ old('contact_no_home')?old('contact_no_home'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 pdd">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Office</span>
                                                        <span>(कार्यालय)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap contact_no_office"><input
                                                                type="number" name="contact_no_office"
                                                                value="{{ old('contact_no_office')?old('contact_no_office'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 pdl">
                                        <div class=" iafbb-single">
                                            <div class="row">
                                                <div class="col-lg-5 iafl">
                                                    <div class="iaf-left">
                                                        <span>Mobile No. </span>
                                                        <span>(मोबाईल न)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap mobile_no"><input
                                                                type="number" name="mobile_no"
                                                                value="{{ old('mobile_no')?old('mobile_no'):'' }}"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false" placeholder=""
                                                                autocomplete="off"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Branch Office -->
                                <div class=" iafbb-single">
                                    <div class="row">
                                        <div class="col-lg-2 iafl">
                                            <div class="iaf-left">
                                                <span>Branch</span>
                                                <span>(साखा)</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-10 d-f">
                                            <div class="iaf-right">
                                                <select name="branch" id="branch">
                                                    <option value="not-selected">Select branch below</option>
                                                    <option value="newroad">New Road</option>
                                                    <option value="kalimati">Kalimati</option>
                                                    <option value="gongabu">Gongabu</option>
                                                    <option value="chabhil">Chabhil</option>
                                                    <option value="tinkune">Tinkune</option>
                                                    <option value="lagankhel">Lagankhel</option>
                                                    <option value="hattigauda">Hattigauda</option>
                                                    <option value="bhaktapur">Bhaktapur</option>
                                                    <option value="chitwan">Chitwan</option>
                                                    <option value="nuwakot">Nuwakot</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- PHOTO -->
                                <div class=" iafbb-single iafbb-photo">
                                    <div class="iaf-right iaf-right-photo">
                                        <label>फोटो </label>
                                        <img src="{{ asset('frontend/images/formphoto.png') }}" id="formPhoto"
                                            alt="defalult photo">
                                        <span class="wpcf7-form-control-wrap file-129"><input type="file" name="photo"
                                                size="40" class="wpcf7-form-control wpcf7-multifile form-control"
                                                aria-invalid="false"
                                                onchange="document.getElementById('formPhoto').src = window.URL.createObjectURL(this.files[0])"
                                                required></span>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Signature Card (दस्तखत नमुना कार्ड)</h4>
                        <div class="iafbs-inner iafbs-extra">
                            <span>दस्तखत <small>*</small> </span>
                            <span class="wpcf7-form-control-wrap file-129"><input type="file" name="signature" size="40"
                                    class="wpcf7-form-control wpcf7-multifile form-control" aria-invalid="false"></span>
                        </div>
                    </div>
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Location Map (खातावालाको घर व्यावसाय पुगने बाटोको नक्सा )</h4>
                        <div class="iafbs-inner iafbs-extra">
                            <span>घर सम्मा पुगने नक्सा <small>*</small> </span>
                            <span class="wpcf7-form-control-wrap file-129"><input type="file" name="location_map"
                                    size="40" class="wpcf7-form-control wpcf7-multifile form-control"
                                    multiple="multiple" aria-invalid="false"></span>
                        </div>
                    </div>
                    <div class="iafb-submit">
                        <input type="submit" value="Submit" class="a">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection