<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>{{ get_title() }}</title>
        <meta name="description" content="{{ view.getVar('description') }}">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->url->get('img/favicon.ico')?>"/>
        {{ stylesheetLink('css/_reset.css?v=1.0') }}
    </head>
    <body data-bs-spy="scroll" data-bs-target="#navbar">
      <div class="offcanvas offcanvas-start" tabindex="-1" id="navbarMobile" aria-labelledby="navbarMobile" aria-hidden="true" tab-index="-1">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about-us">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#our-love-story">Our Love Story</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#rsvp">RSVP</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#time-and-place">Time & Place</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#what-to-wear">What to Wear</a>
            </li>
          </ul>
        </div>
      </div>
        <nav class="navbar navbar-light fixed-top" id="navbar">
            <div class="container">
                <div class="row align-items-center w-100">
                    <div class="col-lg-3 col-sm-3 col-2 d-lg-none dl-block">
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                    </div>
                      <div class="col-xl-3 col-lg-3 col-sm-7 col-9 navbar-outer">
                        <a class="navbar-brand" href="{{ url('/') }}">Him & Her</a>
                      </div>
                      <div class="col-xxl-7 col-xl-9 col-lg-9">
                        <div class="collapse navbar-collapse" id="navbarScroll">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                              <li class="nav-item">
                                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="#about-us">About Us</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="#our-love-story">Our Love Story</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#rsvp">RSVP</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#time-and-place">Time & Place</a>
                              </li>
                              <li class="nav-item">
                                {{ linkTo(['blogs/search', 'Blogs', 'class' : 'nav-link']) }}
                              </li>
                            </ul>
                        </div>         
                      </div>
                      <div class="col-xl-2 col-lg-2 col-sm-7 col-9 navbar-outer">
                        <form class="d-flex" style="margin-top: -5px;">
                            {%- if session.user != null -%}
                            {{ linkTo(['blogs/create', 'Create Blog', 'class' : 'btn btn-outline-success']) }}
                            {{ linkTo(['auth/logout', 'Logout', 'class' : 'btn btn-outline-danger ms-2']) }}
                            {%- else -%}
                            {{ linkTo(['auth/login', 'Log In', 'class' : 'btn btn-outline-success']) }}
                            {%- endif -%}
                          </form>
                      </div>
                </div>
            </div>
          </nav>
            <?php echo $this->getContent(); ?>
        <!-- jQuery first, then Popper.js, and then Bootstrap's JavaScript -->
        <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        {{ javascript_include('js/_base.js') }}
        {{ javascript_include('js/parallax.min.js') }}
      </body>
</html>
