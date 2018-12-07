Feature: Create campaign
    As an Fundraiser
    In order to raise funds
    I would like to be able to create a campaign 

    Background:
      Given the following user exists
      | firstname | lastname | email            |
      | Hanna     | Nyman    | hanna@random.com |

      And I visit the site
      
    Scenario: Successfully create a campaign when not logged in [Happy Path]
      When I click 'Create a Campaign'
      And I have logged in
      And I fill in 'Goal' with '1000'
      And I fill in 'Company name' with 'SAAB'
      And I fill in 'Postal code' with '1234'
      And I fill in 'Category' with 'Health'
      And I fill in 'Title' with 'Bad Health'
      And I fill in 'Description' with 'I have a bad heath.'
      And I click 'Save Campaign' 
      Then I should see 'Bad Health'
      Then I should see 'I have a bad heath.'

    Scenario: Successfully create a campaign when logged in [Happy Path]
      When I have logged in
      And I click 'Create a Campaign'
      And I fill in 'Goal' with '1000'
      And I fill in 'Company name' with 'SAAB'
      And I fill in 'Postal code' with '1234'
      And I fill in 'Category' with 'Health'
      And I fill in 'Title' with 'Bad Health'
      And I fill in 'Description' with 'I have a bad heath.'
      And I click 'Save Campaign' 
      Then I should see 'Bad Health'
      Then I should see 'I have a bad heath.'

    Scenario: Create a campaign when logged in [Sad Path]
      And I have logged in
      Then I click 'Create a Campaign'
      And I click 'Save Campaign' 
      Then I should see "Title can't be blank"
      And I should see "Description can't be blank"
      
