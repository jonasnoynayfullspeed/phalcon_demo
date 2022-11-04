
<div class="container" style="margin-top:5em">
    <div class="bg-dark text-white p-5 mt-5 rounded">
        {%- if header != null -%}
                
                {%- if header == 'Search' -%}     
                <?php echo \Phalcon\Tag::form(['blogs/search', 'method' => 'get']) ?>  
                    <?php echo \Phalcon\Tag::textField(['q', 'placeholder' => 'Type to search ...',
                     'class' => 'form-control', 'value' => $this->request->get('q'), 'style' => 'background: none; font-size: 30px; color: white; border: none;']) ?>
                </form>
                {%- else -%}
                <h1>{{ header }}</h1>
                {%- endif -%}
        {%-  endif -%}
        <p class="lead"></p>
    </div>
    <?php echo $this->getContent(); ?>
</div>