<?php echo $this->flash->output(); ?>
<div class="container-fluid">
    <div class="row">
        <!--<div class="bg-dark text-white p-5 mt-5 rounded">
            <h1>This is a simple blog app.</h1>
            <p class="lead"></p>

                {{ linkTo(['blogs/search', 'Search »', 'class' : 'btn btn-lg btn-primary' ]) }}
            
            {%- if session.user != null -%}
                {{ linkTo(['blogs/create', 'Create A New Article', 'class' : 'ms-2 btn btn-lg btn-outline-light' ]) }}
            {%- endif -%}
        </div>-->
        <div id="home" class="p-0 carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#home" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#home" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#home" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                {{ image("img/banner/1.jpg", "alt": "Some Photo", "class": "d-block w-100") }}
                </div>
                <div class="carousel-item">
                {{ image("img/banner/2.jpg", "alt": "Some Photo", "class": "d-block w-100") }}
                </div>
                <div class="carousel-item">
                {{ image("img/banner/3.jpg", "alt": "Some Photo", "class": "d-block w-100") }}
                </div>
            </div>
            <div class="carousel-overlay"></div>
            <div class="slide-title">
                {{ image("img/banner/title.png", "class": "banner-title") }}
                <h2>Tying the knot this Dec 31, 2050</h2>
                <div class="timer">
                    <div class="timer-item">
                        <span class="count">00</span>
                        <span class="label">Days</span>
                    </div>
                    <div class="timer-item">
                        <span class="count">00</span>
                        <span class="label">Hours</span>
                    </div>
                    <div class="timer-item">
                        <span class="count">00</span>
                        <span class="label">Min</span>
                    </div>
                    <div class="timer-item">
                        <span class="count">00</span>
                        <span class="label">Sec</span>
                    </div>
                </div>
            </div>
            <div class="shape-2">
                {{ image("img/banner/shape-2.png") }}
            </div>
        </div>
    </div>
</div>
<div class="g-5 couple-section" id="about-us">
    <div class="container">
        <div class="couple-area">
            <h2>Little something about us!</h2>
            <div class="text-grid bride">
                <h3>Her</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                </p>
                <div class="social">
                    <ul>
                        <li><a href="/"><i class="fa-brands fa-facebook-f"></i></a></li>
                        <li><a href="/"><i class="fa-brands fa-twitter"></i></a></li>
                        <li><a href="/"><i class="fa-brands fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="ourstory-container">
                {{ image('img/plant-1.png', 'class': 'plant-1') }}
                {{ image('img/plant-2.png', 'class': 'plant-2') }}
                <div class="ourstory-container-inner">
                  {{ image('img/ourstory.jpg', 'class': 'couple-img') }}
                </div>
            </div>
            <div class="text-grid groom">
                <h3>Him</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                <div class="social">
                    <ul>
                        <li><a href="/"><i class="fa-brands fa-facebook-f"></i></a></li>
                        <li><a href="/"><i class="fa-brands fa-twitter"></i></a></li>
                        <li><a href="/"><i class="fa-brands fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Our love story -->
<div class="g-5 lovestory-section" id="our-love-story">
  <div class="container">
    <div class="section-title">
      <h2>Our Love Story</h2>
    </div>
    <div class="row align-items-center justify-content-center" role="tablist">
      <div class="col col-lg-12 col-12">
        <div class="tab-area">
          <div class="tablinks">
            <ul class="service-thumbs-outer nav nav-tabs">
              <li class="nav-item">
                <a class="service-thumb active nav-link" id="nav-first-tab" data-bs-toggle="tab" data-bs-target="#nav-first" type="button" role="tab" aria-controls="nav-first" aria-selected="true">First Meet<span class="number"></span></a>
              </li>
              <li class="nav-item">
                <a class="service-thumb nav-link" id="nav-first-tab" data-bs-toggle="tab" data-bs-target="#nav-second" type="button" role="tab" aria-controls="nav-second" aria-selected="false">First Date<span class="number"></span></a>
              </li>
              <li class="nav-item">
                <a class="service-thumb nav-link" id="nav-first-tab" data-bs-toggle="tab" data-bs-target="#nav-third" type="button" role="tab" aria-controls="nav-third" aria-selected="false">First Anniversary<span class="number"></span></a>
              </li><li class="nav-item">
                <a class="service-thumb nav-link" id="nav-first-tab" data-bs-toggle="tab" data-bs-target="#nav-fourth" type="button" role="tab" aria-controls="nav-fourth" aria-selected="false">Marriage Proposal<span class="number"></span></a>
              </li>
            </ul>
          </div>
          <div class="tab-content">
            <div class="tab-pane active" id="nav-first" role="tabpanel" aria-labelledby="nav-first-tab">
              <div class="lovestory-item">
                <div class="lovestory-img">{{ image('img/lovestory/1.jpg', 'class': 'first-meet') }}</div>
                <div class="lovestory-content">
                    <div class="lovestory-content-inner">
                      <h2>First Time We Met</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      <div class="border-shape">
                        <img src="data:image/jpeg;base64,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" alt="">
                      </div>
                    </div>
                </div>
              </div>
            </div><!--second -->
            <div class="tab-pane" id="nav-second" role="tabpanel" aria-labelledby="nav-second-tab">
              <div class="lovestory-item">
                <div class="lovestory-img">{{ image('img/lovestory/2.jpg', 'class' : 'first-date') }}</div>
                <div class="lovestory-content">
                    <div class="lovestory-content-inner">
                      <h2>Our First Date</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      <div class="border-shape">
                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAICAgICAQICAgIDAgIDAwYEAwMDAwcFBQQGCAcJCAgHCAgJCg0LCQoMCggICw8LDA0ODg8OCQsQERAOEQ0ODg7/2wBDAQIDAwMDAwcEBAcOCQgJDg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg7/wgARCAB/AIIDAREAAhEBAxEB/8QAHAABAAIDAQEBAAAAAAAAAAAAAAUGAwQHAgEJ/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAECAwQF/9oADAMBAAIQAxAAAAD9/ACsTp7CfVsd5xTW+zmAAAABAN7zMJOmFczPpd5mcuAAAPJVp1r86ay2K8spozWusgzK3G3cyaAACmTtO3HxK1nrqLOXFNna03jBTp0DXnzmosqyABW50kLnATLNXnWqzrJ3EdNxs1dtcNGakrjfsmmPoBVZ0n7zjW51gRrVXnWEm/p7LJeUFN9C1wjVmmQMZDtybOygAAHNM+neubPeWrLmrLJK3IAAAAHK8+rCvwmLicc91mauQAAAAObZ9Pk32du5+LZby3UAAAAArjpT89siY1tbjpNXXXEAAAADXXnOfRMsSWsYJrCXC8gAAAABFNUXPol7zsN57acNz7+/a+eAAAAPBhWDm6pOs3cS9x4lsN5gAAAYiEm5G51mqjnr0HXnygAAAAEY18PRlSp57XnXAAAAAACtOkVnexZanLYsA//EACkQAAIDAQABAgYCAgMAAAAAAAMEAQIFBhQSMAAHEBETIBUhIiYxM0L/2gAIAQEAAQwA+qqVN0E6Gn9zpk5lEVJJj/fCcR2WSIPgbQuTYR6rFeisQzZQvxo7WXkwONByq9lzhaSGwsWhwe0t5uSCUYRK8pmgKFIsmrAZ1p/j++wNWP6H4X5t/fSDFYYRMJAuaZaZHi5twK4TnTv/AHg3OpFQ5YQz0gJ/3tegxWJe0UpPWJmLemQi9uxsuMaEROgj1GGDMylWE5ayHh9OvnwcgSkxNRiS6P8AsfF6SIaWT1+f1R6vbEdpHonc9Qvlm9Ss+kmswUnS52OgGhyRmav29dukZk+e0ctmFXaUo7+xlp6rfaCe9o54quKmrTyQqAGNURF4Pl6Fh11MoBX6tsxODs+cedtdLd9GJ0nqJoN+qIrmdO9BsjsY6vOWJULXjaK7UKsjIhjtFZ7d+5IIEmeS1/JiprMLUBNdhlqZj7UYubsSAHafwfryMRHy3ybf+80VCB/kCRF2tEVEovrLRAS2rW4rUvWLU0MakZZVJUjVxZo8ihW4rn6TEU2E9YFGIZ8g38LMCObJNUSho2Vt8GksRI+ov1y0JRbXTZyTs9wsdyudzypdbUGdfmskCzBSaWyIO21EEbapl1iPtH6KGrgaRs9yfxZgloC1e4S2oLTNVw8Yy8/kL9GstdljyazdR3S5urTXkuZg3mS47IzyQW+6ElR9J6JGHdVPQXK7b1p8rWKEFVcXiuTbcEH++GC0/tbPQaloK+aGZHELEGO1nHUXA10fwmV+pBCOvcJh1MKvPZdP8Q0ZWGqmqipIVAUXF+/cmueF1B2/xwXFc/t28X/qg75hS2Soh2B0t4nlCrx/bDm2BZ6U1lzamhlaotMTMQAqbXt9TaYbVZ/5noEg33ViEm0CMzvrXoLQ11ahAEBn6vbHVL3OB9RZHxOfyyufGTnHTu646ap9L2+qrIENFqa+v4cRs3zwRiYgTGC1/JZ54QINB+clStpsxxy0kiiwCRGay1jPZ7lXsqjEUkN/b2Vg3ZFdiPulgm8dRnL14gka/Ola2heh22b0iuzuJsVR2d2MZyRdCZG9Smx9hXnDHW6vWymgmXt7bKwW846p6+oOmFpVm2zAfMfVKmfMWzmzedjAJerk4e3WjsTyGWEti5RGsI1WtDG0wTvSF9P3NBUtiCeSiJfpCWOzISUkvGMy3bJex2SyXXrqQdVGyQJZLIqP45AuLTAz/MPayHTZNaQxX2r3oMViEvWlF3E24t4rYWfjRzlSHZTaHBMobh1eZv55JvqYYm1uJ5rQAGzUl0m2gyDLRYhgPL4g1BDIjRknsmMNdMzBbRQSSHnjHpawoMwznKN0j1jihh1LpcuYJrRRphSuz3LysW8YYAjWSCuKPSL29hYjvIayYf7MFmdLml3UrxW0vGmk1EgeWFA+HmTBSRa/K1l/cf2vtPje7dZ/IdOxlhh5C3zD5sZ5AUhxtkrsdMr+GR2w8NZYCaAVVhVAv9f/xAA8EAACAQEGAwQGCAUFAAAAAAABAgMRAAQSITFBBVFhEyIycRQwQlJigRAgIzNygpGiBmOSobEkQ3ODsv/aAAgBAQANPwD6ZSTdLmWIiEde6zr7bMM86gAgDckeCS5jCh6NH4WHmK9Ra4lReLrdSPtAfDJHiIGFhnQmooRrY0+zvcZiIJJFKtkTUEZE/Q9Si0LMQNTRamg3NpFxJIjVVgdwfVoSLtJAyVVNkYMy6aAitRrS0szSCFTURBjpXnudqk0teWbh95PMPVo/0dafntEY73dCwyBlVg6HmjNGxYfETrbiKdyBzldZMBcYfdUgMCugIFNTa9p2xNKskP8AtRAeVMt2Y2lkkneFfDCZHZ8A6Lip6hRVmY0AFlNDLcoKwg/8jEKfkTYJRm4cUKebYMTWXxxtepLvel/MGpXoyr52hNJ+G8WYuUPIsayKTs1WXobQYWEElMcMynHGa6FSRkwyIteuDQl490kjllV1PkWFrpxJlHwh5iF/bItoQJUjf7tWXR3p7KAg03Z00pUchdoRD/TgxU/PXraCmMx1wSKa4XWuYBoRQ6FSKnU/WuM3ZNEpp6ZMvixfApypu1eVh3UM+H9KtY6FJe2iPShJoPwkWBpBxm5fdueUg6+6+WwY2Tu3HicQ/wBPfB7p6HdG8wQaWuaZoxqkyE6V9uJjvqp5HIxORxzhuskGPJpFHtKcKtUZEqD71OMwBrreBmgvKCgr5hUy/lsNbDh8QljBpIGRsEoJGY9kmmeQoeauBBK2dRTMA+0Ad/ltaSKOMDeilzX99rrdvthsXkYFR5hUJ8nH1pIe0l/GxLP+4m09SXOqLXJByAFARzqbRENecOQmjr3sQ3IFSDqCORNiKMpzBs/juDnvw9YWPL3a5bEaG7uexnhy4lw07ihzYDdSK0yIpaEUTiXD0PaxjlLDmyg7ijLvladqz+gJ6RcpiDWpgDY4nqBnGSRS0XdV/SxHJMmhWVJMBOwrkwoKliBbQrg7dCejR4qjzAtLlEGjMca/ExNDQb5fO18lMhSFQZb3KfEQMgqgACpoFUCxFRBdEEjr5yOCD8lHmfqzztJcbw2SIXJZoWPsnESVrqDTUZuxZocitTqRuKnPWlpCpvdNIYq1OLkWAwgdSdAfpAot5u7YZKcjsw6MCLL4b/w6T0W9jqRUKx6lvlYZYuJcIZ5B09IQKf0Y23C3a9zH9MTWfxiOHslYdFZmY+RCedlWskjNWWdgMgWOZtIywpyiWmIqvTMAW3aVC4HyBH+bTSCNbzAhTs3JooZSWyJyDA6kCn1HFGR1BVhyIttFd7/PFGPyK4X+1q1KotKk6k8z19R6UkdOZVWmYH5JF/UbXpDeLuNsSyyRsnnhRSByBtdjSQGSjtRQ5wimwOm/S15kjhu67mQvkR5ULdACbAVa7XUAlBsXYkKn5iLXaXs7xdpwMcbUqNCQQQagg0PrBxS8D8wupVR+0WS9TQtNF94pel4jdCN1xOcszhKjWzoAl7vNyxxXpDoBLHTX3Tn5jUKQvZXhVKA6hDlgruQuP4rajs4jFDU6s0rCh6kYmtfJA87RgiNaDCqLXOgG5zJqfWcP4rdeI4BvEVEbf+ZLRsl2S8k/dXmFq3eU9HBoT/MW0TFeJcHvSYo45PawitVDGpqKr0rWx1kuDRGvmW7M2JpHd78ZPR5j7lHqufwHFapWWJtY3UkMp8iD6y9Rtcb5+GTJG+Td3/stdiOHcUVshTS7z9FZe6T0U5AWjWlw4kGKi/IPYkK+2BrzGYBFQNFHFOHK8UvVJkZFb5gG0i5xmCSISDzxOP7WdEvMKTNjNPA1H9oCiZ60OedfWSoUcdDbh8Xo3Gbrhyv10OkgGhNBXzDDa18APC78XNQdVjZtQ6+y2pp7wzlUm63iSMFb0o1VhoHGpGhGY3AJqTcLwUQnrGaof0sfsYeKxxCN4cRHdlXQBiF7y5VAqB62AEBSaCdD4oyetKg7Gm1QeMvQK9R6BeCc1O6AsPysNrXFPS+GXptZwhqrH4ge4/MNX2rXuATxpjCqqUBqzbeIDc5+ZtNGUmglocjUEZWuTm7iVkBLhCVxE9aerUVLMaAWXxdlKGp+luKDs502SWndccsVKfiC7k2/hm/Ik8p1muz93EfxRmvmll4VFFPApAdkKqQVrlVeW4J3ABbLt73A0UUPxENQtTYKDXmNbKgDSyZtIQM2PU6+qiQu7HYAVJtIA8N3lFUuqnQBdMVNW1rWmVk+6nj7skZ5q23+DvYF4jIBkJEYgOBtmoYW4t/DStLQVKntCAepAa0SBEHIAUHrJ7nLEnmyEC0qJKgJoOZQ8vdPK3uOAqr5vWlPKp6Wq0kz6DExLMegqTTpZII7jdG94JUyMOmMkA/D66ZzJPcS4R43JqzxE5Z6lSQK1IIsDQwGAlq+YOH+9pB9qxlVrzeF90YSRGp3NSfK0SBI40FAqjQfU//EAB4RAAEEAwEBAQAAAAAAAAAAAAEAEBEwIDFAQSFQ/9oACAECAQE/AMIQ5RWHC8q3QKRrIPKlaFkPC0hwF/PwPEOAKG+ocEcc3ho7xfOX/8QALhEAAQMCBAQFAwUAAAAAAAAAAQACESExEjBBUQMQImETIDJxgWKRoXKxweHw/9oACAEDAQE/AOc4KBB51qi3Y0KLHDk1rnWUEGDl0dWUSm1YR8qaAo1B3CNThCeZdkjhnUwmCLEFFxFHCEfqHyE3odOieMLY7pnrTfSXFYhsiBp5x0ClypcVO4TXGKVGyAES2oVvZCHNwH4Qp8IiGoqaQohvmf6yjsm1pya7WxQg9j+CsJasW/8AaGEiNF4Z0MocIgS6gUF52C6RbyxjEi/JtK8w4hNfsUHDb8ro2/ZY2jRS7iGFxIADQggAbeXG5Ek5HCpKcCW4kAmepBpIkpzcOZw9R2/lMNP97IBhsFWIa1QTVxRINrZnDrTcQgYJThhNfug46OVTeqIg5jSnCaj3TXwLURa01aJXR3CdBaCMwUTYPTvb3VRUXC+pq8Q61UNcOn7ZrSLFVd+oflCJkWKw3lWNEOC1wnMgpp1FwoBNLOToLnDug0C5WN2WTFAgSFZyBwt9jmtMOlRBgqO6uU+gw5wIcKrwnxKGFncqpqfJ/9k=" alt="">
                      </div>
                    </div>
                </div>
              </div>
            </div><!--third -->
            <div class="tab-pane" id="nav-third" role="tabpanel" aria-labelledby="nav-third-tab">
              <div class="lovestory-item">
                <div class="lovestory-img">{{ image('img/lovestory/3.jpg', 'class' : 'first-anniversary') }}</div>
                <div class="lovestory-content">
                    <div class="lovestory-content-inner">
                      <h2>First Annivesary</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      <div class="border-shape">
                        <img src="data:image/jpeg;base64,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" alt="">
                      </div>
                    </div>
                </div>
              </div>
            </div><!--fourth -->
            <div class="tab-pane" id="nav-fourth" role="tabpanel" aria-labelledby="nav-fourth-tab">
              <div class="lovestory-item">
                <div class="lovestory-img">{{ image('img/lovestory/4.jpg', 'class' : 'marriage-proposal') }}</div>
                <div class="lovestory-content">
                    <div class="lovestory-content-inner">
                      <h2>Our Engagement</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><div class="border-shape">
                        <img src="data:image/jpeg;base64,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" alt="">
                      </div>
                    </div>
                </div>
              </div>
            </div><!--fourth -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="parallax" data-parallax="scroll" data-image-src="/img/parallax.jpg"></div>
<div class="rsvp-section section-padding" id="rsvp">
  <div class="rsvp-wrapper">
    <div class="contact-form-area">
      <div class="row">
        <div class="section-title">
          <h2>Are you attending?</h2>
        </div>
        <form class="form" method="POST">
          <div class="row">
            <div class="form-field">
              <input class="form-control" type="text" name="name" placeholder="Name" value=""><p></p>
            </div>
          </div><!--input-->
          <div class="row">
            <div class="form-field">
              <input class="form-control" type="email" name="email" placeholder="Email" value=""><p></p>
            </div>
          </div><!--input-->
          <div class="row">
            <div class="form-field">
              <input class="form-control" type="number" name="number" placeholder="Mobile Number" value=""><p></p>
            </div>
          </div><!--input-->
          <div class="submit-area">
            <div class="form-submit">
              <button type="submit">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div><!--contact-form-area-->
    <div class="vector-1">
      {{ image('img/vector-1.png') }}
    </div>
  </div>
</div>

<div class="venue-section section-padding" id="time-and-place">
  <div class="container">
    <div class="section-title">
      <h2>Time and Place</h2>
    </div>
    <div class="row">
      <div class="col-xl-6 col-12">
        <div class="venue-container row g-0 shadow-sm">
          <div class="venue-details">
              <h2>THE CEREMONY</h2>
              <h3 class="mb-0">Monday, Dec 31, 2050 4:00 PM – 6:00 PM</h3>
              <p>New York, USA</p>
              <a href="https://goo.gl/maps/m5A7dR9qcfWnG9tR7">SEE LOCATION</a>
          </div>
        <div class="venue-image">
          {{ image('img/ceremony.jpg') }}
          </div>
        </div>
      </div><!--col-md-6-->
      <div class="col-xl-6 col-12">
        <div class="venue-container row g-0 shadow-sm">
          <div class="venue-details">
              <h2>THE RECEPTION</h2>
              <h3 class="mb-0">Monday, Dec 31, 2050 6:00 PM – 10:00 PM</h3>
              <p>New York, USA</p>
              <a href="https://goo.gl/maps/m5A7dR9qcfWnG9tR7">SEE LOCATION</a>
          </div>
        <div class="venue-image">
          {{ image('img/reception.jpg') }}
          </div>
        </div>
      </div><!--col-md-6-->
    </div>
  </div>
</div>

<!--Our love story -->
<div class="g-5 portfolio-section" id="what-to-wear">
  <div class="container">
    <div class="section-title">
      <h2>What To Wear</h2>
    </div>
     <div class="collage-wrapper">
      <div class="collage">
        <div class="collage-img"><p></p>{{ image('img/wear/small.jpg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/large.jpg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/medium3.jpg') }}</div>
      </div>
      <div class="collage">
        <div class="collage-img"><p></p>{{ image('img/wear/large2.jpg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/medium.jpeg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/small4.jpg') }}</div>
      </div>
      <div class="collage end">
        <div class="collage-img"><p></p>{{ image('img/wear/small2.jpg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/medium4.jpg') }}</div>
        <div class="collage-img"><p></p>{{ image('img/wear/large4.jpg') }}</div>
      </div>
     </div>
  </div>
</div>
<div class="g-5 footer">
  <div class="container">
    <div class="row">
       <div class="col-md-6 col-lg-4">
          <div class="footer-about">
              <h2>Jonas & Virn</h2>
              <p>We hope you'll be able to join us. Don’t forget to RSVP!</p>
              <ul>
                <li>
                  <a href="/"><i class="fa-brands fa-facebook-f"></i></a>
                </li>
                <li>
                  <a href="/"><i class="fa-brands fa-twitter"></i></a>
                </li>
                <li>
                  <a href="/"><i class="fa-brands fa-instagram"></i></a>
                </li>
              </ul>
          </div>
       </div><!--col-md-6 col-lg-4 -->
       <div class="col-md-6 col-lg-2">
        <div class="footer-links">
            <h2>Site Map</h2><ul>
              <li>
                <a href="/#about-us">About Us</a>
              </li>
              <li>
                <a href="/#our-love-story">Our Love Story</a>
              </li>
              <li>
                <a href="/#blog">Blog</a>
              </li>
              <li>
                <a href="/#rsvp">RSVP</a>
              </li>
            </ul>
        </div>
     </div><!--col-md-6 col-lg-4 -->
     <div class="col-md-6">
      <div class="footer-links contact">
          <h2>Contact Us</h2>
          <ul>
            <li><i class="fa-solid fa-envelope"></i>jonas.noynay.dev@gmail.com</li>
            <li><i class="fa-solid fa-location-dot"></i>Cebu City, Cebu Philippines</li>
          </ul>
      </div>
   </div><!--col-md-6 col-lg-4 -->
    </div><!--row-->
    <div class="row">
       <div class="copyright">
          <p>© 2022 Jonas & Virn. All Rights Reserved.</p>
       </div>
    </div>
  </div>
</div>