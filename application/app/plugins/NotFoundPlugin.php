<?php
declare(strict_types=1);

use Phalcon\Di\Injectable;
use Phalcon\Events\Event;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;
use Phalcon\Mvc\Dispatcher\Exception as DispatcherException;

/**
 * NotFoundPlugin
 *
 * Handles not-found controller/actions
 */
class NotFoundPlugin extends Injectable
{
    /**
     * This action is executed before perform any action in the application
     *
     * @param Event $event
     * @param MvcDispatcher $dispatcher
     * @param Exception $exception
     * @return bool
     */
    public function beforeException(Event $event, MvcDispatcher $dispatcher, Exception $exception)
    {
        if ($exception instanceof DispatcherException) {
            switch ($exception->getCode()) {
                case DispatcherException::EXCEPTION_INVALID_HANDLER:
                case DispatcherException::EXCEPTION_CYCLIC_ROUTING:
                    $action = 'show500';
                    break;
                case DispatcherException::EXCEPTION_INVALID_PARAMS:
                    $action = 'show400';
                    break;
                default:
                    $action = 'show404';
            }

            $dispatcher->forward(
                [
                    'controller' => 'error',
                    'action'     => $action
                ]
            );

            return false;
        }

        return !$event->isStopped();
    }
}