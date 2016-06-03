Feature: Handle Accounts

Background:
    Given I logged in Salesforce as "Admin" user

Scenario: Create a new Account
    Given I clicked "Accounts" tab
    When I click "New" button
    And I fill in "acc2" with "Account_124"
    And I fill in "acc20" with "124"
    And I click "Save" button
    Then I should see "Account_124"

Scenario: Create a new View Account
    Given I clicked "Accounts" tab
    When I click "Create New View" link
    And I fill in "fname" with "Account View 01"
    And I click "Save" button
    Then I should see "Account View 01"