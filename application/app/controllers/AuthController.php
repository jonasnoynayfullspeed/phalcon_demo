<?php
declare(strict_types=1);

use Phalcon\Validation;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\PresenceOf;

class AuthController extends ControllerBase
{

    public function loginAction()
    {
        //login
        \Phalcon\Tag::setTitle('Login');
        //login
    }

    public function signupAction()
    {
        \Phalcon\Tag::setTitle('Sign Up');
    }

    public function registerSession(Users $user)
    {
        $this->session->set('user', $user);
    }

    public function logoutAction() {
        $this->session->destroy();
        return $this->response->redirect('/');
    }

    public function authorizeAction()
    {
        if($this->request->isPost() && $this->security->checkToken())
        {
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            //validate data
            $validation = new Validation();

            $validation->add('email',
                new PresenceOf(
                    [
                        'message' => 'The email is required',
                    ]
                )
            );
            
            $validation->add('password',
                new PresenceOf(
                    [
                        'message' => 'The password is required',
                    ]
                )
            );
            
            $validation->add('email',
                new Email(
                    [
                        'message' => 'The email is not valid',
                    ]
                )
            );
            
            $messages = $validation->validate($_POST);

            if(count($messages) > 0) {
                foreach($messages as $message) {

                    $this->flash->error($message->getMessage());

                    return $this->dispatcher->forward(['controller' => 'auth', 'action' => 'login']);
                }
            }

            //$user = Users::findFirstByEmail($email);

            $user = Users::findFirst([
                'email = :email:',
                'bind' => [
                    'email' => $email
                ]
            ]);

            // It is highly recommended to use the array syntax with conditions and bind to 
            // shield yourself from SQL injections, especially when the criteria comes from user input.

            // $user = Users::findFirst("email = '$email'");

            if(!$user) {
                $this->flash->error('Email address not found. Please try again.');
                return $this->dispatcher->forward(['controller' => 'auth', 'action' => 'login']);

            }
            if(!$this->security->checkHash($password, $user->password)) {

                $this->flash->error('Password incorrect. Please try again.');
                return $this->dispatcher->forward(['controller' => 'auth', 'action' => 'login']);         
            }

            $this->registerSession($user);
            return $this->response->redirect('/'); 
        
        } else {

            return $this->response->redirect('auth/login');
        }
    }

    public function registerAction()
    {
        if($this->request->isPost() && $this->security->checkToken())
        {
            $user = new Users();

            $user->assign(
                $this->request->getPost(),
                [
                    'name',
                    'email',
                    'password',
                ]
            );

            $user->confirmPassword = $this->request->getPost('confirm_password');

            $success = $user->save();

            if($success) {

                $this->registerSession($user);

                return $this->response->redirect('/');

            } else {
                $messages = $user->getMessages();

                foreach ($messages as $message) {
    
                    $this->flash->error($message->getMessage());
                }

                return $this->dispatcher->forward(['controller' => 'auth', 'action' => 'signup']);
            }
        } else {

            return $this->response->redirect('auth/signup');
        }
    }
}
