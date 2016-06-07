@leads
Feature: Handle Leads

Background:
    Given I logged in Salesforce as "Admin" user

@create_object
Scenario: Create a new Lead
    Given I clicked "Leads" tab
    When I click "New" button
    And I select "Working" from "lea13" drop down list
    And I fill in "name_lastlea2" with "Lead_465"
    And I fill in "lea3" with "Z Company"
    And I click "Save" button
    Then I should see "Lead_465"

@create_view
Scenario: Create a new Lead View
    Given I clicked "Leads" tab
    When I click "Create New View" link
    And I fill in "fname" with "Lead View 06"
    And I click "Save" button
    Then I should see "Lead View 06"