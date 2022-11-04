<?php

use Phalcon\Mvc\Model;
use Phalcon\Validation;

class Guests extends Model {
    public $id;
    public $name;
    public $email;
    public $number;
}