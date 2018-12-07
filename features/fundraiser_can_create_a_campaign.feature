Feature: Create campaign
    As an Fundraiser
    In order to raise funds
    I would like to be able to create a campaign 

    Background:
      Given the following user exists
      | firstname | lastname | email            |
      | Hanna     | Nyman    | hanna@random.com |

      And I visit the site
      And I click 'Create a Campaign'
      
    Scenario: Successfully create a campaign when not logged in [Happy Path]
      Then show me the page
      And I click 'Log in'
      And I have logged in
      When I fill in 'Goal' with '1000'
      And I fill in 'Company name' with 'SAAB'
      And I fill in 'Postal code' with '1234'
      And I fill in 'Category' with 'Health'
      And I fill in 'Title' with 'Bad Health'
      And I fill in 'Description' with 'I have a bad heath.'
      And I click 'Save Campaign' 
      Then I should see 'Bad Health'
      Then I should see 'I have a bad heath.'

    Scenario: Create a campaign [Sad Path]
      When I click 'Save Campaign' 
      Then I should see "Title can't be blank"
      And I should see "Description can't be blank"
      
