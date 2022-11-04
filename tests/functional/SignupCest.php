<?php

class SignupCest
{
    public function _before(FunctionalTester $I)
    {
        $I->amOnPage('/');
    }

    // tests
    public function tryToTest(FunctionalTester $I)
    {
        $I->click('Login / Sign Up');
        $I->seeInCurrentUrl('/auth/login');
        $I->see('Sign In');

        $I->click('Create New Account');
        $I->see('Sign Up');
        $I->fillField('email',    'tes.test2@gmail.com');
        $I->fillField('password', '123456');
        $I->fillField('confirm_password', '123456');
        $I->fillField('name', 'Firstname Lastname');
        $I->fillField('password', '123456');

        $I->click('Submit');
        $I->seeInCurrentUrl('/');
        $I->see('This is a simple blog app.');
        $I->seeLink('Logout');
    }
}
