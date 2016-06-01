Feature: Handle Products

Background:
    Given I logged in Salesforce as "Admin" user

Scenario: Create a new Product
    Given I clicked "Products" tab
    When I click "New" button
    And I fill in "Name" with "Product"
    And I fill in "ProductCode" with "Code"
    And I click "Save" button
    Then I should see 'Product name'

    Given I clicked "Products" tab
    When I fill in "search" with "Product" to look for
    And I click "Find Product" button
    And I click "Activate" link
    Then I should see "Desactivate" link