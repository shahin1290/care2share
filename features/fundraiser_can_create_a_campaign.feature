Feature: Create campaign
    As an Fundraiser
    In order to raise funds
    I would like to be able to create a campaign 

  Background:
    Given I visit the site
    When I click "Create a Campaign" 

  Scenario: Successfully create a campaign [Happy Path]
    When I fill in 'Amount' with '1000'
    And I fill in 'Companyname' with 'SAAB'
    And I fill in 'Postalcode' with '1234'
    And I fill in 'Category' with 'Health'
    And I fill in 'Title' with 'Bad Health'
    And I fill in 'Tellstory' with 'I have a bad heath.'
    And I click 'Save Campaign' 
    # Then I should be on the index page
    And I should see "Bad Health"
    And I should see "I have a bad heath."
    
