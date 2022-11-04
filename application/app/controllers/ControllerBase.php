<?php
declare(strict_types=1);

use Phalcon\Http\Response;
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{
    // Implement common logic

    public function initialize()
    {
        if($this->session->user)
        {
            $this->view->user = $this->user = $this->session->user;
            
        }
    }

    public function returnError($errorCode)
    {
        return $this->dispatcher
        ->forward(
            [
            'controller' => 'error',
             'action' => 'show'.$errorCode
        ]);
    }
}
