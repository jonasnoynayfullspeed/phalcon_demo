<?php
declare(strict_types=1);

use Phalcon\Mvc\Model\Query;

class IndexController extends ControllerBase
{

    public function initialize()
    {
        \Phalcon\Tag::setTitle('Welcome To Our Site!');
        $this->view->archiveLinks = Articles::getAllArchiveLinks();
    }

    public function indexAction()
    {

        if($this->request->isPost()) {

            //Create a new article
            $guest = new Guests();

            //Assign / validate article
            $guest->assign(
                $this->request->getPost(),
                [
                    'name',
                    'email',
                    'number'
                ]
            );

            $guestSaved = $guest->save();

            return $this->response->redirect('index/thankyou');
        }
        //Using of query() returns Phalcon\Mvc\Model\Criteria

        // $latestTech = Articles::query()
        // ->join(ArticleCategories::class, 'Articles.id = ArticleCategories.article_id')
        // ->join(Categories::class, 'Categories.id = ArticleCategories.category_id')
        // ->where('Categories.name = :type:')
        // ->bind(['type' => 'Tech'])
        // ->orderBy('Articles.created_at DESC')
        // ->limit(1)
        // ->execute();

        // $this->view->tech = $latestTech->getFirst();

        // //using Query Class
        // $phql = "
        // SELECT 
        //     * 
        // FROM 
        //     Articles
        // LEFT JOIN
        //     ArticleCategories
        //         ON Articles.id = ArticleCategories.article_id
        // LEFT JOIN
        // Categories
        //     ON Categories.id = ArticleCategories.category_id
        // WHERE 
        //     Categories.name = :type:
        // ORDER BY
        //     Articles.created_at DESC
        // LIMIT 1
        // ";

        // $latestNews = new Query(
        //     $phql,
        //     $this->di
        // );

        // $latestNews = $latestNews->execute(['type' => 'News']); 

        // $this->view->news = $latestNews->getFirst();

        
        //  //using Models Manager which has DI included

        //  $mostTrending = $this
        //  ->modelsManager
        // ->executeQuery(
        //     "
        //     SELECT 
        //     * 
        //     FROM 
        //         Articles
        //     LEFT JOIN
        //         ArticleCategories
        //             ON Articles.id = ArticleCategories.article_id
        //     LEFT JOIN
        //     Categories
        //         ON Categories.id = ArticleCategories.category_id
        //     WHERE 
        //         Categories.name = :type:
        //     ORDER BY
        //         Articles.created_at DESC
        //     LIMIT 1
        // "
        // , [ 'type' => 'Trending' ]);
 
        //  $this->view->trending = $mostTrending->getFirst();

        //
    }

}

