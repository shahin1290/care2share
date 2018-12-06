Feature: Fundraiser has an admin page

    As a Fundraiser
    In order to update or delete my campaign
    I would like to see an admin page

    Background: 
        Given the following campaigns exists
            | title        | description                      | amount_raised |
            |Brain surgery | I grew up always helping others. | 1000.00       |
            |Help          |   I need some help               | 10000         |
         And I am logged in as 'admin'
         And I am on the admin page
         
    Scenario: Admin can see all his campaigns
        And I should see 'Brain Surgery'

    Scenario: Admin can't see others' campaigns
        And I should not see "Help"

