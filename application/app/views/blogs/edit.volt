
<div class="container mt-5">
    <?php echo $this->flash->output(); ?>
    <?php echo \Phalcon\Tag::form(['blogs/update/'.$blog->id]) ?>
    <input type='hidden' name='<?php echo $this->security->getTokenKey() ?>' value='<?php echo $this->security->getToken() ?>'/>
        
  <div class="row justify-content-end">
  
          <div class="col-md-6 col-sm-6">
              <div class="form-group mb-3">
                  <label for="email">Title</label>
                  <?php echo \Phalcon\Tag::textField(['title', 'placeholder' => '', 'class' => 'form-control', 'value' => $blog->title]) ?>
              </div>
              <div class="form-group mb-3">
                <label for="email">Summary</label>
                <?php echo \Phalcon\Tag::textField(['summary', 'placeholder' => '', 'class' => 'form-control', 'value' => $blog->summary]) ?>
            </div>
              <div class="form-group mb-3">
                  <label for="email">Banner URL</label>
                  <?php echo \Phalcon\Tag::textField(['banner', 'placeholder' => '', 'class' => 'form-control', 'value' => $blog->banner]) ?>
              </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="form-group mb-3">
                <label for="email">Category</label>
                <?php echo \Phalcon\Tag::select(['category_ids[]', $categories, 'using' => ['id', 'name'], 'class' => 'form-control', 'value' => '', 'multiple' => true]) ?>
            </div>
              <div class="form-group mb-3">
                  <label for="password">Content</label>
                  <textarea id="editor" class="form-control" name="content" rows="5">{{ blog.content }}</textarea>
              </div>
          </div>
          
          <div class="col-md-6 col align-self-end">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="button" class="btn btn-warning">Discard Changes</button>
              {{ linkTo(['blogs/delete/'~blog.id, 'Delete Article', 'class' : 'btn btn-danger' , 'onclick' : 'return confirm("Are you sure you want to delete this article?")']) }}
          </div>
         
  </div>
  </form>
  </div>
  
  
  <!-- <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>
    tinymce.init({
      selector: 'textarea#editor',
      menubar: false
    });
  </script> -->