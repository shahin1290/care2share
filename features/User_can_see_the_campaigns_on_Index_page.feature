Feature: User can see the campaigns on index page

    As a User
    In order to know which campaigns I can donate to
    I would like to see a list of available campaigns on the index page
    
    Scenario: User can see the campaigns on index page
        When I visit the site
        Then I should see "List of Campaigns"