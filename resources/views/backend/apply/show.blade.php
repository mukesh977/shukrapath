<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        Online Applied Documents
    </title>

    <link rel="icon" href="{{ asset('default_images/favicon.png') }}" type="image/gif" sizes="16x16">
    @include('include.frontend.link')

</head>

<body>
    <section class="inner-apply ">
        <div class="container-fluid">
            <div class="inner-apply-form">
                <div class="iaf-title">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="iaft-left">
                                <img src="{{ asset('default_images/logo.png') }}" alt="logo">

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
                <form action="#">
                    <div class="iafb-desc">
                        <h4>Account Opening Form</h4>
                        <h3>खाता खोल्ने फारम </h3>
                    </div>
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Personal Information of Account Holder (व्यक्तिगत खातावालाको विवरण)</h4>
                        <div class="iafbs-inner">
                            <!-- NAME -->
                            <div class="iafb-name">
                                <strong>Account Holder's Name (खातावालाको नाम )</strong>
                                <p>In English (Please use Block Letters)(अंग्रेजीमा) <small>*</small></p>
                                <span class="wpcf7-form-control-wrap adv_name"><input type="text" name="adv_name" value="{{ $apply->name }}"
                                    size="40"
                                    class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                    aria-required="true" aria-invalid="false" placeholder="" "></span>
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
                                                <span class="wpcf7-form-control-wrap adv_name"><input type="text"
                                                        name="adv_name" value="{{ $apply->date_of_birth }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""></span>
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
                                                <span class="wpcf7-form-control-wrap adv_name"><input type="text"
                                                        name="adv_name" value="{{ $apply->father_name }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""></span>
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
                                                <span class="wpcf7-form-control-wrap adv_name"><input type="text"
                                                        name="adv_name" value="{{ $apply->mother_name }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""></span>
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
                                                <span class="wpcf7-form-control-wrap adv_name"><input type="text"
                                                        name="adv_name" value="{{ $apply->grandfather_name }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""></span>
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
                                                <span class="wpcf7-form-control-wrap adv_name"><input type="text"
                                                        name="adv_name" value="{{ $apply->spouse_name }}" size="40"
                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                        aria-required="true" aria-invalid="false" placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->citizenship_permanent_address }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->permanent_state }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->permanent_district }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->permanent_rm_mc_ward }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->permanent_address }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->permanent_state }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->permanent_district }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->permanent_rm_mc_ward }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->permanent_tole }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                        <span>Persent Address </span>
                                                        <span>(हालको ठेगाना)</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="iaf-right">
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->temporary_address }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->present_state }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="{{ $apply->present_district }}" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="present_rm_mc_ward" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                                <span class="wpcf7-form-control-wrap adv_name"><input
                                                                        type="text" name="adv_name" value="present_tole" size="40"
                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                        aria-required="true" aria-invalid="false"
                                                                        placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->citizenship_no }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->citizenship_issued_district }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->passport_no }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->nationality }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->occupation }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->contact_no_home }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->contact_no_office }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
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
                                                        <span class="wpcf7-form-control-wrap adv_name"><input
                                                                type="text" name="adv_name" value="{{ $apply->mobile_no }}" size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
                                                                aria-required="true" aria-invalid="false"
                                                                placeholder=""></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- PHOTO -->
                                <div class=" iafbb-single iafbb-photo">
                                    <div class="iaf-right iaf-right-photo">
                                        <label>फोटो </label>
                                        <img src="{{ asset(Storage::url($apply->photo)) }}" id="formPhoto" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Signature Card (दस्तखत नमुना कार्ड)</h4>
                        <div class="iafbs-inner iafbs-extra">
                            <span>दस्तखत <small>*</small> </span>
                            <img src="{{ asset(Storage::url($apply->signature)) }}" alt="signature">
                        </div>
                    </div>
                    <div class="iafb-single">
                        <h4 class="iafbs-title">Location Map (खातावालाको घर व्यावसाय पुगने बाटोको नक्सा )</h4>
                        <div class="iafbs-inner iafbs-extra">
                            <span>घर सम्मा पुगने नक्सा <small>*</small> </span>
                            <img src="{{ asset(Storage::url($apply->location_map)) }}" alt="location map" srcset="">
                        </div>
                    </div>                    
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

</html>