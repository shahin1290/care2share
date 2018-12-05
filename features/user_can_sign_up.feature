Feature: User can sign up
    As a User
    In order to register
    I would like to be able to sign up

    Background: 
        Given the following user exists
        | firstname | lastname | email         | password | password_confirmation |
        | Hanna     | Nyman    | hanna@tuna.se | password | password              |
        And I visit the page
        And I click 'Sign up'

    Scenario: When I fill in the sign up form, I can sign up [Happy Path]
        When I fill in 'Name' field with 'Hanna'
        And I fill in 'Address' field with '111 lakeview'
        And I fill in 'Phone' field with '123456'
        And I fill in 'Email' field with 'hanna@tuna.se'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click 'Sign up'
        Then I should see 'Hello, Hanna'
    
    Scenario: When I don't fill in the sign up form I get error messages [Sad Path]
        When I click 'Sign up'
        Then I should see "Email can't be blank"
        And I should see "Password can't be blank"
        And I should see "Name can't be blank"
        And I should see "Address can't be blank"
        And I should see "Phone can't be blank"

    Scenario: When Password and Password confirmation don't match I get error message [Sad Path]
        When I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'hello'
        And I click 'Sign up'
        Then I should see "Password confirmation doesn't match Password"

    Scenario: When Email is taken I get error message [Sad Path]
        When I fill in 'Email' field with 'hanna@tuna.se'
        And I click 'Sign up'
        Then I should see "Email has already been taken"