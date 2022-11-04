<?php

use Phalcon\Mvc\Router;

$router = new Router();

$router->add(
    '/category/:params',
    [
        'controller'    => 'blogs',
        'action'        => 'category',
        'params'    => 1
    ]
);

$router->add(
    '/archive/:params',
    [
        'controller'    => 'blogs',
        'action'        => 'archive',
        'params'    => 1
    ]
);

$router->add(
    '/author/:params',
    [
        'controller'    => 'blogs',
        'action'        => 'author',
        'params'    => 1
    ]
);

return $router;
