<?php

use Phalcon\Di;
use Phalcon\Tag;
use Phalcon\Mvc\Model;
use Phalcon\Url;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Mvc\Model\Query;

class Articles extends Model {


    public $id;
    public $user_id;
    public $title;
    public $slug;
    public $content;
    public $banner;
    public $created_at;


    public function initialize()
    {
        /**
         * Relationship
         */
        $this->belongsTo(
            'user_id',
            Users::class,
            'id',
            [
                'reusable' => true,
                'alias'    => 'author'
            ]
        );

        $this->hasMany(
            'id',
            ArticleCategories::class,
            'article_id',
            [
                'reusable' => true,
                'alias'    => 'article_categories',
            ]
        );

        $this->hasManyToMany(
            'id',
            ArticleCategories::class,
            'article_id',
            'category_id',
            Categories::class,
            'id',
            [
                'reusable' => true,
                'alias'    => 'categories',
            ]
        );

        $this->addBehavior(
            new Timestampable(
                [
                    'beforeValidationOnCreate' => [
                        'field'  => 'created_at',
                        'format' => 'Y-m-d H:i:s',
                    ],
                    'beforeValidationOnUpdate' => [
                        'field'  => 'updated_at',
                        'format' => 'Y-m-d H:i:s',
                    ],
                ]
            )
        );
    }

    public function beforeValidation()
    {
        $this->title ? $this->slug = Tag::friendlyTitle($this->title) : '';
    }

    public function getContentShort()
    {
        return strlen($this->content) > 150 ? substr($this->content,0,150)."..." : $this->content;
    }

    public function getCategoriesConcatinated()
    {
        $concatinated= '';

        if($this->categories) {
            foreach($this->categories as $i => $cat)
            {
                $concatinated.= $cat->name . (count($this->categories) -1 == $i ? '' : ' . ');
            }
        }

        return $concatinated;
    }

    public static function getAllArchiveLinks()
    {
        $links = [];

        $container = Di::getDefault();

       $query = new Query(
            "
            SELECT 
                YEAR(created_at) as yearCreated, MONTH(created_at) as monthCreated, MAX(created_at) as created_at
            FROM 
                Articles
           
            GROUP BY
                yearCreated, monthCreated
        ",
        $container
    );

        $articles = $query->execute();

        $url = new Url();

        foreach($articles as $article)

        {
            $links[date('F Y', strtotime($article->created_at))] = $url
            ->get('archive/'.date('Y', strtotime($article->created_at)).'/'.date('m', strtotime($article->created_at)));
        }

        return $links;
    }
}