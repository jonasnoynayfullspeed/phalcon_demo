$(function () {
  $(window).on("scroll", function () {
    var scroll = $(window).scrollTop();

    if (scroll == 0) {
      $(".navbar").removeClass("bg-light");
    } else {
      $(".navbar").addClass("bg-light");
    }
  });

  $(window).scroll();
  $(window).on("resize", function () {
    if (window.innerWidth <= 991) {
      $(".navbar").removeClass("navbar-expand-lg");
      $(".navbar .offcanvas").show();
    } else {
      $(".navbar").addClass("navbar-expand-lg");
      $(".navbar .offcanvas").hide();
    }
  });
  $(window).resize();

  $("#navbarMobile").on("click", ".nav-link", function (e) {
    e.stopPropagation();
    setTimeout(function () {
      //$("#navbarMobile").offcanvas("hide");
    }, 500);
  });

  function pad(str) {
    str = str.toString();
    return str.length < 2 ? pad("0" + str, 2) : str;
  }

  function countdown() {
    var finalDate = new Date("Dec 31, 2024 16:00:00").getTime();

    if (finalDate - new Date().getTime() < 0) {
      return;
    }

    // Update the count down every 1 second
    var x = setInterval(function () {
      // Get today's date and time
      var now = new Date().getTime();

      // Find the distance between now and the count down date
      var distance = finalDate - now;

      // Time calculations for days, hours, minutes and seconds
      var days = pad(Math.floor(distance / (1000 * 60 * 60 * 24)));
      var hours = pad(
        Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))
      );
      var minutes = pad(
        Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60))
      );
      var seconds = pad(Math.floor((distance % (1000 * 60)) / 1000));

      $(".timer .timer-item:nth(0) .count").text(days);
      $(".timer .timer-item:nth(1) .count").text(hours);
      $(".timer .timer-item:nth(2) .count").text(minutes);
      $(".timer .timer-item:nth(3) .count").text(seconds);

      // If the count down is over, write some text
    }, 1000);
  }
  countdown();
});
