
<div class="container mt-5">
  <?php echo $this->flash->output(); ?>
  <?php echo \Phalcon\Tag::form(['blogs/save', 'enctype'=> "multipart/form-data"]) ?>
  <input type='hidden' name='<?php echo $this->security->getTokenKey() ?>' value='<?php echo $this->security->getToken() ?>'/>

  <div class="row justify-content-end">

        <div class="col-md-6 col-sm-6">
            <div class="form-group mb-3">
                <label for="email">Title</label>
                <?php echo \Phalcon\Tag::textField(['title', 'placeholder' => '', 'class' => 'form-control']) ?>
            </div>
            <div class="form-group mb-3">
                <label for="email">Summary</label>
                <?php echo \Phalcon\Tag::textField(['summary', 'placeholder' => '', 'class' => 'form-control']) ?>
            </div>
            <div class="form-group mb-3">
                <label for="email">Banner Image</label>
                <?php echo \Phalcon\Tag::fileField(['banner', 'placeholder' => '', 'class' => 'form-control', 'accept' => 'image/*']) ?>
            </div>
        </div>
        <div class="col-md-6 col-sm-6">
            <div class="form-group mb-3">
                <label for="email">Category</label>
                <?php echo \Phalcon\Tag::select(['category_ids[]', $categories, 'using' => ['id', 'name'], 'class' => 'form-control', 'multiple' => true]) ?>
            </div>
            <div class="form-group mb-3">
                <label for="password">Content</label>
                <textarea id="editor" class="form-control" name="content" rows="5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla volutpat ex in lorem mattis efficitur. Proin lobortis urna a quam ornare, ac ultrices quam fermentum. Donec gravida vulputate velit, sed pretium nunc suscipit nec. Nullam vel nisi sit amet diam efficitur viverra. Etiam imperdiet, metus quis semper placerat, magna dolor blandit urna, a imperdiet erat ipsum sit amet quam. Suspendisse at pretium enim. Mauris vitae egestas lectus. Cras neque est, imperdiet eget sodales sit amet, auctor a arcu. Phasellus vulputate finibus orci, a maximus eros pellentesque nec.

Curabitur vitae porta sapien. Quisque at risus eu ex sodales aliquam. Proin at nibh egestas, ornare elit quis, facilisis ligula. Suspendisse potenti. Nam vitae porta enim, vitae ultricies magna. Maecenas vitae consequat urna, dapibus lobortis dolor. In elit nisi, accumsan nec erat id, egestas faucibus quam. Fusce vitae urna tincidunt, luctus risus vel, dapibus ex. Duis ac cursus leo, in auctor ante. Etiam ac gravida orci. Pellentesque vulputate sed ligula eget tincidunt. Aenean sit amet tellus varius, commodo enim gravida, euismod leo. Integer non justo dignissim, varius sem non, consectetur quam. Nullam viverra nisl id dolor scelerisque tristique id luctus nulla. Sed luctus ligula eget laoreet congue. Vestibulum non sagittis purus.
                </textarea>
            </div>
        </div>
        
        <div class="col-md-6 col align-self-end">
            <button type="submit" class="btn btn-primary">Submit</button>
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