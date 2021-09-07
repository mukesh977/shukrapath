<footer>
    <section class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12">
                    <div class="ft-single footer-about">
                        <h4>About Sukrapath</h4>
                        <!--{!! substr($about_us->description, 0, 75) !!}...-->
                        <p>Shukrapath Multipurpose Cooperative Limited is one of the prominent organization in Kathmandu Valley. </p>
                        <a href="{{ route('frontend.aboutUs') }}">Learn More</a>
                    </div>
                </div>

                <div class="col-lg-2 col-12">
                    <div class="ft-single footer-links">
                        <h4>Quick Links</h4>
                        <ul>
                            <li><a href="{{ route('frontend_index') }}">Home</a></li>
                            <li><a href="{{ route('frontend.aboutUs') }}">About Us</a></li>
                            <li><a href="{{ route('frontend.services') }}">Services</a></li>
                            <li><a href="{{ route('frontend.contactUs') }}">Contacts</a></li>
                            <li><a href="{{ route('frontend.team') }}">Our Team</a></li>
                            <li><a href="{{ route('frontend.gallery') }}">Our Gallery</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="ft-single footer-aff">
                        <h4>Our Affiliations</h4>
                        <div class="footer-affiliations">
                            @foreach ($affiliation as $item)
                            <div class="footer-aff-single">
                                <img src="{{ asset(Storage::url($item->image)) }}" alt="image.jpeg">
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <div class="ft-single footer-hours">
                        <h4>Working Hours</h4>
                        <p>We work all days a week, Please contact us for any inquiry.</p>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="fh-left">Sunday-Friday</td>
                                    <td class="fh-right">{{ $setting->institution_open_time }}</td>
                                </tr>
                                <tr>
                                    <td class="fh-left">Saturday</td>
                                    <td class="fh-right">10:00 AM TO 12:00 PM</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="fb-left">
                        <ul>
                            @foreach ($pages as $item)
                            <li><a href="{{ route('frontend.view_page',$item->page_url) }}">{{ $item->page_title }}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="fb-right">
                        <p> <i class="far fa-copyright"></i>
                            <?php echo date('Y'); ?> Sukrapath - Powered By <a href="https://www.ultrabyteit.com/"
                                target="_blank">Ultrabyte</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <button onclick="topFunction()" id="myTopbtn" title="Go to top"><i class="fas fa-angle-up"></i></button>
</footer>