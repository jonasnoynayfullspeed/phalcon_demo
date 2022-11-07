# Phalcon MVC Framework DEMO

## **How to install**
### Run this command
```
docker-compose up -d
```
### Once done, run:
```
docker exec -it app composer install
```
### Access this link to your browser
```
http://localhost:8080/
```

### Add .env file with this value
```
S3_KEY=AKIAUPHKQ5HGKBZQOQ7Y
S3_SECRET=z3hzO5xG3wkHLb69vjvbAzGg1sEpfaR5l8AzvBJC
S3_BUCKET=phalcon-demo
CLOUDFRONT_URL=https://d3lrxacytioeh0.cloudfront.net/
```

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