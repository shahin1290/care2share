Feature: Fundraiser has an admin page

    As a Fundraiser
    In order to update or delete my campaign
    I would like to see an admin page

    Background: 
        Given the following user exists
            | firstname | lastname | email         | password | password_confirmation |
            | Hanna     | Nyman    | hanna@tuna.se | password | password              | 
            |aaa        |   aaa    |aaa@aaa.com    |aaaaaa    |aaaaaa                 |
        
        And the following campaign exists
            | title        | description                      | amount_raised |user|
            |Tuna          | I grew up always helping others. | 1000.00       |hanna@tuna.se|
            |Help|I need some help|20000|aaa@aaa.com|
            |Books|Books on something|200|hanna@tuna.se|
            
    Scenario: Admin can see all his campaigns only
        When I visit the site
        And I click 'Log in'
        And I fill in 'Email' with 'hanna@tuna.se'
        And I fill in 'Password' with 'password' 
        And I click 'Log in'
        Then I should be on my admin page
        And I should see 'Tuna'
        And I should see 'Books'
        And I should not see 'Help'
        Then I should see 'Edit'
        Then I should see 'Destroy'