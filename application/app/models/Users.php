<?php
use Phalcon\Tag;
use Phalcon\Mvc\Model;
use Phalcon\Security;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Uniqueness;
use Phalcon\Validation\Validator\Confirmation;
use Phalcon\Mvc\Model\Behavior\Timestampable;

class Users extends Model {
    public $id;
    public $name;
    public $email;
    public $password;
    public $confirmPassword;

    /**
     * List of events
     *
     */
    // afterCreate
    // afterDelete
    // afterFetch
    // afterSave
    // afterUpdate
    // afterValidation
    // afterValidationOnCreate
    // afterValidationOnUpdate
    // beforeDelete
    // beforeCreate
    // beforeSave
    // beforeUpdate
    // beforeValidation
    // beforeValidationOnCreate
    // beforeValidationOnUpdate
    // notDeleted
    // notSaved
    // onValidationFails
    // prepareSave
    // validation

    public function initialize()
    {
        $this->addBehavior(
            new Timestampable(
                [
                    'beforeValidationOnCreate' => [
                        'field'  => 'created_at',
                        'format' => 'Y-m-d H:i:s',
                    ],
                ]
            )
        );
    }

    public function validation()
    {
        $validator = new Validation();

        $validator->add(
            'email',
            new Uniqueness(
                [
                    'message' => 'Email already taken.'
                ]
            )
        );

        $validator->add(
            'password',
            new Confirmation(
                [
                    'message' => 'Passwords are not identical.',
                    'with' => 'confirmPassword'
                ]
            )
    );

        return $this->validate($validator);
    }

    public function beforeSave()
    {
        $security = new Security();
        
        $this->password = $security->hash($this->password);
    }

    public function getSlugName()
    {
        return Tag::friendlyTitle($this->name);
    }
}