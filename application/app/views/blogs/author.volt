<div class="row g-5 mt-5">
    <div class="col-md-4">
        <article>
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
            <div class="col-xs-4">
                <div class="feature-icon bg-primary bg-gradient p-2"></div>
            </div>
            <div class="col p-4 d-flex flex-column position-static">
                <h2 class="mb-0">Hi, I'm {{ author.name }}</h2>
                <strong class="d-inline-block mb-2 text-primary">Email: {{ author.email }}</strong>

                <div class="mb-1 text-muted">Joined: {{ date('F d, Y', strtotime(author.created_at)) }}</div>
            </div>
            </div>
        </article>
    </div>
    <div class="col-md-8">
        <h4>My Blogs</h4>
        <hr>
        {%- for blog in blogs -%}
        <article>
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                <strong class="d-inline-block mb-2 text-primary">{{ blog.getCategoriesConcatinated() }}</strong>
                <h3 class="mb-0">{{ blog.title }}</h3>
                <div class="mb-1 text-muted">{{ date('F d, Y', strtotime(blog.created_at)) }}</div>
                <p class="mb-auto">{{ blog.getContentShort() }}</p>

                {{ linkTo(['blogs/show/'~blog.slug, 'Continue reading »', 'class' : 'stretched-link' ]) }}
            </div>
            <div class="col-auto d-none d-lg-block">
              {{ image(blog.banner, 'style' : 'width: 200px; height: 250px; object-fit: cover;') }}
            </div>
            </div>
        </article>
        {%- endfor -%}
    </div>
  </div>