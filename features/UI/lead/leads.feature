Feature: Handle Leads

Background:
    Given I logged in Salesforce as "Admin" user

Scenario: Create a new Lead
    Given I clicked "Leads" tab
    When I click "New" button
    And I select "Working" from "lea13" drop down list
    And I fill in "name_lastlea2" with "Lead_458"
    And I fill in "lea3" with "Z Company"
    And I click "Save" button
    Then I should see "Lead_458"