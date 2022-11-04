<?php

class LoginFuncCest
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

        $I->fillField('email',    'jonas.noynay.dev@gmail.com');
        $I->fillField('password', '123456');

        $I->click('Submit');
        $I->seeInCurrentUrl('/');
        $I->see('This is a simple blog app.');
        $I->seeLink('Logout');
    }
}
