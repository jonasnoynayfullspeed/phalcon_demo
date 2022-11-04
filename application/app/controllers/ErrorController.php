<?php
declare(strict_types=1);

use Phalcon\Mvc\View;

/**
 * @ErrorController
 *
 * Manage errors
 */
class ErrorController extends ControllerBase
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Oops!');

        // LEVEL_NO_RENDER	        Indicates to avoid generating any kind of presentation.	 
        // LEVEL_ACTION_VIEW	    Generates the presentation to the view associated to the action.
        // LEVEL_BEFORE_TEMPLATE	Generates presentation templates prior to the controller layout.
        // LEVEL_LAYOUT	            Generates the presentation to the controller layout.
        // LEVEL_AFTER_TEMPLATE	    Generates the presentation to the templates after the controller layout.
        // LEVEL_MAIN_LAYOUT	    Generates the presentation to the main layout. File views/index.phtml

        $this->view->setRenderLevel(
            View::LEVEL_LAYOUT
        );
    }

    public function show404Action(): void
    {
        $this->response->setStatusCode(404);
       echo "<h1>Page Not Found.</h1>";
    }

    public function show401Action(): void
    {
        $this->response->setStatusCode(401);
    }

    public function show400Action(): void
    {
        $this->response->setStatusCode(400);
    }

    public function show403Action(): void
    {
        $this->response->setStatusCode(403);
        echo "<h1>Unauthorized.</h1>";
    }

    public function show500Action(): void
    {
        $this->response->setStatusCode(500);
    }
}