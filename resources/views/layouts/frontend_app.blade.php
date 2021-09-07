<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        @yield('seo_title')
    </title>
    <meta name="description" content="@yield('seo_description')">
    <meta name="keywords" content="@yield('seo_keyword')">
    
    <link rel="icon" href="{{ asset('default_images/favicon.png') }}" type="image/gif" sizes="16x16">


    @include('include.frontend.link')

    @yield('css')


</head>

<body>

    @include('include.frontend.navbar')

    @yield('content')

    @include('include.frontend.footer')

    @include('include.frontend.script')

    @yield('script')

</body>

</html>