<?php

use Phalcon\Mvc\Model;
use Phalcon\Validation;

class ArticleCategories extends Model {
    
    public $id;
    public $article_id;
    public $category_id;
}