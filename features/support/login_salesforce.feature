@smoke
Feature: Log in to Salesforce

Scenario: Login as System Admin user
    Given I am on Salesforce login page
    When I fill in "Username" field with "marcelo@jalasoft.com.marcelo01"
    And I fill in "Password" field with "Control123"
    And I click 'Log in to Sandbox'
    Then I should see Salesforce home page