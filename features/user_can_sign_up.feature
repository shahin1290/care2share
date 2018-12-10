Feature: User can sign Up
    As a User
    In order to register
    I would like to be able to sign Up

    Background: 
        Given the following user exists
        | firstname | lastname | email         | password | password_confirmation |
        | Hanna     | Nyman    | hanna@tuna.se | password | password              |
        And I visit the site
        And I click 'Sign up'

    Scenario: When I fill in the sign Up form, I can sign Up [Happy Path]
        When I fill in 'user_firstname' with 'John'
        And I fill in 'user_lastname' with 'Doe'
        And I fill in 'Email' with 'johndoe@hotmail.com'
        And I fill in 'Password' with 'password'
        And I fill in 'Password confirmation' with 'password'
        And I click 'Sign Up'
        Then I should see 'Hello, John!'
    
    Scenario: When I don't fill in the sign Up form I get error messages [Sad Path]
        When I click 'Sign Up'
        Then I should see "Email can't be blank"
        And I should see "Password can't be blank"
        And I should see "First name can't be blank"
        And I should see "Last name can't be blank"

    Scenario: When Password and Password confirmation don't match I get error message [Sad Path]
        When I fill in 'Password' with 'password'
        And I fill in 'Password confirmation' with 'hello'
        And I click 'Sign Up'
        Then I should see "Password confirmation doesn't match Password"

    Scenario: When Email is taken I get error message [Sad Path]
        When I fill in 'Email' with 'hanna@tuna.se'
        And I click 'Sign Up'
        Then I should see 'Email has already been taken'