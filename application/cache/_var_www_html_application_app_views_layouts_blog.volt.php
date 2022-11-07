
<div class="container" style="margin-top:5em">
    <div class="bg-dark text-white mt-5 rounded">
        <?= $this->tag->image([$banner, 'style' => 'width: 100%; height: 300px; object-fit: cover; opacity: 0.8']) ?>
        <p class="lead"></p>
    </div>
    <?php echo $this->getContent(); ?>
</div>