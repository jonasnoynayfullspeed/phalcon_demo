<?php
declare(strict_types=1);

use Phalcon\Di\FactoryDefault;

error_reporting(E_ALL);

define('DOCROOT', dirname(dirname(dirname(__FILE__))) . DIRECTORY_SEPARATOR);
define('BASE_PATH', dirname(__DIR__));
define('APP_PATH', BASE_PATH . '/app');
define('APP_TEST', 'testing');
define('APP_DEVELOPMENT', 'development');
define('APP_PRODUCTION', 'production');
define('APP_ENVIRONMENT', (getenv('APP_ENVIRONMENT') ? getenv('APP_ENVIRONMENT') : APP_PRODUCTION));

try {

    ini_set('display_errors', 'On');

    set_error_handler(function ($errno, $errstr, $errfile, $errline) {
        throw new ErrorException(
            $errstr,
            0,
            $errno,
            $errfile,
            $errline
        );
    });

    include DOCROOT . '/vendor/autoload.php';

    /**
     * The FactoryDefault Dependency Injector automatically registers
     * the services that provide a full stack framework.
     */

    $di = new FactoryDefault();

    /**
     * Read services
     */
    include APP_PATH . '/config/services.php';

    /**
     * Handle routes
     */
    include APP_PATH . '/config/router.php';

    /**
     * Get config service for use in inline setup below
     */
    $config = $di->getConfig();

    /**
     * Include Autoloader
     */
    include APP_PATH . '/config/loader.php';

    /**
     * Handle the request
     */
    $application = new \Phalcon\Mvc\Application($di);

    if(APP_ENVIRONMENT == APP_TEST)
    {
        return $application;
    } else {
        echo $application->handle($_SERVER['REQUEST_URI'])->getContent();
    }
} catch (\Exception $e) {
    echo $e->getMessage() . '<br>';
    echo $e->getFile() . '<br>';
    echo '<pre>' . $e->getTraceAsString() . '</pre>';
}
