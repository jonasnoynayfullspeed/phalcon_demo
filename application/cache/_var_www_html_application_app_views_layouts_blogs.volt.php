
<div class="container" style="margin-top:5em">
    <div class="bg-dark text-white p-5 mt-5 rounded"><?php if ($header != null) { ?><?php if ($header == 'Search') { ?><?php echo \Phalcon\Tag::form(['blogs/search', 'method' => 'get']) ?>  
                    <?php echo \Phalcon\Tag::textField(['q', 'placeholder' => 'Type to search ...',
                     'class' => 'form-control', 'value' => $this->request->get('q'), 'style' => 'background: none; font-size: 30px; color: white; border: none;']) ?>
                </form><?php } else { ?><h1><?= $header ?></h1><?php } ?><?php } ?><p class="lead"></p>
    </div>
    <?php echo $this->getContent(); ?>
</div>