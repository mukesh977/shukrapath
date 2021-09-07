// FIXED HEADER
$(window).scroll(function () {
  if ($(window).scrollTop() >= 300) {
    $(".header-main").addClass("fixed-header");
  } else {
    $(".header-main").removeClass("fixed-header");
  }
});
// DROPDOWN SEARCH
$(document).ready(function () {
  $(".fa-search").click(function () {
    $(".search-box").toggle();
    $("input[type='text']").focus();
  });
});
// MAIN BANNER SLIDER
$(document).ready(function () {
  $(".main-banner-slider").slick({
    autoplay: true,
    autoplaySpeed: 4000,
    dots: false,
    infinite: true,
    speed: 1000,
    arrows: false,
  });
});

// TESTIMONIALS SLIDER
$(document).ready(function () {
  $(".main-testimonials-slider").slick({
    autoplay: false,
    autoplaySpeed: 5000,
    speed: 900,
    slidesToShow: 1,
    arrows: false,
    dots: true,
    slidesToScroll: 1,
    prevArrow: "<i class='fas fa-angle-left'></i>",
    nextArrow: "<i class='fas fa-angle-right'></i>",
    responsive: [
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});

// FEATURES SLIDER
$(document).ready(function () {
  $(".main-features-slider").slick({
    autoplay: false,
    autoplaySpeed: 5000,
    speed: 900,
    slidesToShow: 5,
    arrows: true,
    dots: false,
    slidesToScroll: 1,
    prevArrow: "<i class='fas fa-angle-left'></i>",
    nextArrow: "<i class='fas fa-angle-right'></i>",
    responsive: [
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});

// NEWS SLIDER
$(document).ready(function () {
  $(".main-news-slider").slick({
    autoplay: false,
    autoplaySpeed: 5000,
    speed: 900,
    slidesToShow: 3,
    arrows: true,
    dots: false,
    slidesToScroll: 1,
    prevArrow: "<i class='fas fa-angle-left'></i>",
    nextArrow: "<i class='fas fa-angle-right'></i>",
    responsive: [
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});

// BRNACHES SLIDER
$(document).ready(function () {
  $(".main-branches-slider").slick({
    autoplay: false,
    autoplaySpeed: 5000,
    speed: 900,
    slidesToShow: 4,
    arrows: true,
    dots: true,
    slidesToScroll: 1,
    prevArrow: "<i class='fas fa-angle-left'></i>",
    nextArrow: "<i class='fas fa-angle-right'></i>",
    responsive: [
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});
// TO THE TOP BUTTON
$(document).ready(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > 1500) {
      $("#myTopbtn").fadeIn();
    } else {
      $("#myTopbtn").fadeOut();
    }
  });
  $("#myTopbtn").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 600);
    return false;
  });
});

// COUNTER
$(".number").each(function () {
  var size = $(this).text().split(".")[1]
    ? $(this).text().split(".")[1].length
    : 0;
  $(this)
    .prop("Counter", 0)
    .animate(
      {
        Counter: $(this).text(),
      },
      {
        delay: 1000,
        duration: 8000,
        step: function (func) {
          $(this).text(parseFloat(func).toFixed(size));
        },
      }
    );
});

// GALLERY
$(document).ready(function () {
  $(".fancybox").fancybox({
    openEffect: "none",
    closeEffect: "none",
    helpers: {
      overlay: {
        css: {
          background: "rgba(58, 42, 45, 0.95)",
        },
      },
    },
  });
});

// COLLAPISBLE
var coll = document.getElementsByClassName("choose-collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function () {
    this.classList.toggle("choose-active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight) {
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    }
  });
}
