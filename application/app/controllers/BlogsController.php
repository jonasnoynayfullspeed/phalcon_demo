<?php /** @noinspection ALL */

use Phalcon\Validation;
use Phalcon\Paginator\Adapter\QueryBuilder;
use Phalcon\Validation\Validator\PresenceOf;

class BlogsController extends ControllerBase
{
    public function initialize()
    {
        $this->view->archiveLinks = Articles::getAllArchiveLinks();
        \Phalcon\Tag::setTitleSeparator(' - ');
        \Phalcon\Tag::appendTitle('Sample Blog Site');
    }

    public function blogsAction()
    {

    }

    public function createAction()
    {
        $this->view->categories = Categories::find();
        $this->view->header = 'Create A New Blog';

    }

    public function saveAction()
    {

        if($this->request->isPost() && $this->security->checkToken())
        {

            //Start a transaction
            $this->db->begin();

            //Create a new article
            $article = new Articles();

            //Assign / validate article
            $article->assign(
                $this->request->getPost(),
                [
                    'title',
                    'summary',
                    'banner',
                    'content',
                ]
            );

            $article->user_id = $this->session->user->id;

            $articleSaved = $article->save();

            if(!$articleSaved) {

                $messages = $article->getMessages();

                foreach ($messages as $message) {
                    $this->flash->error($message);
                }

                return $this->dispatcher->forward(['controller' => 'blogs', 'action' => 'create']);
            }

            //Add categories
            $categoryIds = $this->request->getPost('category_ids');

            if(count($categoryIds) == 0) {
                $this->db->rollback();

                $this->flash->error('Pick atleast one category');

                return $this->dispatcher->forward(['controller' => 'blogs', 'action' => 'create']);
            }

            foreach($categoryIds as $categoryId)
            {
                $articleCategory = new ArticleCategories();
                $articleCategory->article_id = $article->id;
                $articleCategory->category_id = $categoryId;

                $articleCategory->create();
            }

            $this->db->commit();

            return $this->response->redirect('blogs/search');
            
        } else {
            return $this->response->redirect('blogs/create');
        }
    }

    public function searchAction()
    {
        $query = $this->modelsManager
        ->createBuilder()
        ->from(Articles::class)
        ->orderBy('Articles.created_at DESC');

        $this->view->header = 'Search';

        if($this->request->get('q'))
        {
        $search = ['search' => '%'.strtolower($this->request->get('q')).'%' ];
        $query  = $query->where('LOWER(Articles.title) LIKE :search:', $search)
            ->orWhere('LOWER(Articles.summary) LIKE :search:', $search)
            ->orwhere('LOWER(Articles.content) LIKE :search:', $search);
        }

        $paginator = new QueryBuilder(
            [
                "builder" => $query,
                "limit"   => 2,
                "page"    => $this->request->getQuery('page'),
            ]
        );

        $blogs = $paginator->paginate();

        $this->view->blogs = $blogs->getItems();
        $this->view->prevPage = $this->url->get('blogs/search?page=' .$blogs->previous);
        $this->view->nextPage = $this->url->get('blogs/search?page=' .$blogs->next);
        \Phalcon\Tag::setTitle('Search');
    }

    public function showAction($slug = '')
    {
        $blog = Articles::findFirstBySlug($slug);

        if(!$blog) return $this->returnError(404);

        $this->view->blog = $blog;
        $this->view->banner = $blog->banner;
        \Phalcon\Tag::setTitle($blog->title);
        $this->view->setVar('description', $blog->summary);
        $this->view->setLayout('blog');
    }

    public function editAction($id = 0)
    {
        $article = Articles::findFirst($id);
        
        if(!$article || $article->user_id != $this->session->user->id)
            return $this->returnError(404);

        $this->view->blog = $article;
        $this->view->categories = Categories::find();
    }

    public function updateAction($id = 0)
    {
        if($this->request->isPost() && $this->security->checkToken())
        {

            $article = Articles::findFirst($id);

            if(!$article || $article->user_id != $this->session->user->id)
                return $this->returnError(404);

            $this->db->begin();

            $article->assign(
                $this->request->getPost(),
                [
                    'title',
                    'summary',
                    'banner',
                    'content'
                ]
            );

            $articleSaved = $article->update();

            if(!$articleSaved) {

                $messages = $article->getMessages();

                foreach ($messages as $message) {
                    $this->flash->error($message);
                }

                return $this->dispatcher->forward(
                    [
                        'controller' => 'blogs',
                        'action' => 'edit',
                        'params' => [ $id ]
                
                ]);
            }

            //Add categories
            $categoryIds = $this->request->getPost('category_ids');

            if(count($categoryIds) == 0) {
                $this->db->rollback();

                $this->flash->error('Pick atleast one category');

                return $this->dispatcher->forward(
                    [
                        'controller' => 'blogs',
                        'action' => 'edit',
                        'params' => [ $id ]
                
                ]);
            }

            //delete last categories
            $article->article_categories->delete();

            //update to new categories
            foreach($categoryIds as $categoryId)
            {
                $articleCategory = new ArticleCategories();
                $articleCategory->article_id = $article->id;
                $articleCategory->category_id = $categoryId;

                $articleCategory->save();
            }

            $this->db->commit();

            return $this->response->redirect('blogs/search');
            
        } else {
            return $this->response->redirect('blogs/edit' .$id);
        }
    }

    public function deleteAction($id)
    {
        $article = Articles::findFirst($id);

        if(!$article || $article->user_id != $this->session->user->id) return $this->returnError(404);

        $article->delete();

        return $this->response->redirect('blogs/search');
    }

    public function categoryAction($cat = '')
    {

        $category = Categories::findFirstByName(ucwords($cat));

        if(!$category) return $this->returnError(404);

        $query = $this
         ->modelsManager
         ->createBuilder()
        ->from(Articles::class)
        ->where('
                Articles.id IN (
                    SELECT
                        article_id 
                    FROM 
                        ArticleCategories
                    WHERE
                        ArticleCategories.category_id = :categoryId:
                )
        ', [ 'categoryId' => $category->id  ]);

        $paginator = new QueryBuilder(
            [
                "builder" => $query,
                "limit"   => 2,
                "page"    => $this->request->getQuery('page'),
            ]
        );

        $blogs = $paginator->paginate();

        $this->view->blogs = $blogs->getItems();

        $this->view->prevPage = $this->url->get('category/'.$cat.'?page=' .$blogs->previous);
        $this->view->nextPage = $this->url->get('category/'.$cat.'?page=' .$blogs->next);

         $this->view->header = $category->name;

        $this->view->pick('blogs/search');
    }

    public function archiveAction($year, $month)
    {

        $query = $this
        ->modelsManager
        ->createBuilder()
       ->from(Articles::class)
       ->where('YEAR(created_at) = :year: AND MONTH(created_at) = :month:',
            [ 'year' => $year, 'month' => $month  ]);

        $paginator = new QueryBuilder(
            [
                "builder" => $query,
                "limit"   => 2,
                "page"    => $this->request->getQuery('page'),
            ]
        );

        $blogs = $paginator->paginate();

        $this->view->blogs = $blogs->getItems();

        $this->view->prevPage = $this->url->get('archive/'.$year.'/'.$month.'?page=' .$blogs->previous);
        $this->view->nextPage = $this->url->get('archive/'.$year.'/'.$month.'?page=' .$blogs->next);

        $this->view->header = 'Archives';
        \Phalcon\Tag::setTitle('Archives');
        $this->view->pick('blogs/search');
    }

    public function authorAction($authorName = '')
    {

        $authorName = ucwords(str_replace('-', ' ', $authorName));

        $author = Users::findFirstByName($authorName);

        if(!$author) return $this->returnError(404);

        $blogs = $this
        ->modelsManager
       ->executeQuery(
           "
           SELECT 
           * 
           FROM 
               Articles
           WHERE 
               Articles.user_id IN
               (
                    SELECT
                        Users.id
                    FROM
                        Users
                    WHERE
                        Users.name = :name:
                )
           ORDER BY
               Articles.created_at DESC
       "
       , [ 'name' => $author->name ]);

        $this->view->blogs = $blogs;
        $this->view->author = $author;

        $this->view->header = $author->name . '\'s Author Bio';
    
        $this->view->render('blogs', 'author');
    }
}