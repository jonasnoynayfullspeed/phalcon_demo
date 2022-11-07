<div class="row g-5 mt-5 justify-content-center">

  <article class="blog-post row justify-content-center">
    <div class="col-sm-8">
        <h2 class="blog-post-title"><?= $blog->title ?></h2>
        <p class="blog-post-meta"><?= date('F d, Y', strtotime($blog->created_at)) ?> by <?= $this->tag->linkto('author/' . $blog->author->getSlugName(), $blog->author->name) ?>
            &nbsp;<?php if ($this->session->user->id == $blog->user_id) { ?><?= $this->tag->linkto(['blogs/edit/' . $blog->id, '&#9998; Edit']) ?><?php } ?></p>
        
        <hr>
        <p>
            <?= $blog->content ?>
        </p>
    </div>
  </article>
</div>