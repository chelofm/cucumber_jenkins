@accounts
Feature: Handle Accounts

Background:
    Given I logged in Salesforce as "Admin" user

@create_object
Scenario: Create a new Account
    Given I clicked "Accounts" tab
    When I click "New" button
    And I fill in "acc2" with "Account_130"
    And I fill in "acc20" with "130"
    And I click "Save" button
    Then I should see "Account_130"

@create_view
Scenario: Create a new Account View
    Given I clicked "Accounts" tab
    When I click "Create New View" link
    And I fill in "fname" with "Account View 05"
    And I click "Save" button
    Then I should see "Account View 05"