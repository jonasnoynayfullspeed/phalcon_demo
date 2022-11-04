<div class="row g-5 mt-5">
    <div class="col-md-8">
        {%- for blog in blogs -%}
        <article>
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                <strong class="d-inline-block mb-2 text-primary">{{ blog.getCategoriesConcatinated() }}</strong>
                <h3 class="mb-0">{{ blog.title }}</h3>
                <div class="mb-1 text-muted">{{ date('F d, Y', strtotime(blog.created_at)) }} by {{ linkTo('author/'~blog.author.getSlugName(), blog.author.name) }} </div>
                <p class="mb-auto">{{ blog.getContentShort() }}</p>

                {{ linkTo(['blogs/show/'~blog.slug, 'Continue reading »' ]) }}
            </div>
            <div class="col-auto d-none d-lg-block">
              {{ image(blog.banner, 'style' : 'width: 200px; height: 250px; object-fit: cover;') }}
            </div>
            </div>
        </article>
        {%- endfor -%}
        <nav class="blog-pagination justify-content-center d-flex mb-5" aria-label="Pagination">
          {{ linkTo([prevPage, 'Last', 'class' : 'btn btn-outline-primary me-2']) }}
          {{ linkTo([nextPage, 'Next', 'class' : 'btn btn-outline-primary']) }}
        </nav>
    </div>

    <div class="col-md-4">
      <div class="position-sticky bg-light" style="top: 2rem;">
        <div class="p-4">
          <h4 class="fst-italic">Archives</h4>
          <ol class="list-unstyled mb-0">
            {%- for name, link in archiveLinks -%}
            <li>{{ linkTo(link, name) }}</li>
          {%- endfor -%}
          </ol>
        </div>

        <div class="p-4">
          <h4 class="fst-italic">Social</h4>
          <ol class="list-unstyled">
            <li><a href="#">GitHub</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Facebook</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>