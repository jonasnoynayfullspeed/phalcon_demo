# Phalcon MVC Framework DEMO

## **Implementations**
###  Dependency Injection / Service Location
#### ***Phalcon\Di***
> app/config/services.php

### Loaders
#### ***Phalcon\Loader***
> app/config/loader.php
 
### MVC - Model View Controller
### Models
#### ***Phalcon\Mvc\Model***
> app/models/Users.php
> 
> app/models/Articles.php

#### ***Phalcon\Mvc\Model\Behavior***
> app/models/Articles.php

### Views
#### ***Phalcon\Mvc\View*** (.phtml / .volt)
> app/views/auth/login.phtml
> 
> app/views/blogs/search.volt

### Controllers
#### ***Phalcon\Mvc\Controller***

### Url, Sessions & Flash
#### ***Phalcon\Url***
#### ***Phalcon\Session\Manager***
#### ***Phalcon\Flash\Direct***
> app/config/services.php

### Validation & Security
#### ***Phalcon\Validation***
#### ***CSRF Protection & Password Hashing***
> app/models/Users.php
>
> app/controllers/AuthController.php