@products
Feature: Handle Products

Background:
    Given I logged in Salesforce as "Admin" user

@create_object
Scenario: Create a new Product
    Given I clicked "Products" tab
    When I click "New" button
    And I fill in "Name" with "Product_459"
    And I fill in "ProductCode" with "459"
    And I click "Save" button
    Then I should see "Product_459"

@activate_product
Scenario: Activate a Product
    Given I clicked "Products" tab
    When I fill in "srch_Input" with "Product_459" to look for
    And I click "Find Product" button
    And I click "Activate" link
    Then I should see "Deactivate" link

@delete_object @delete_product
Scenario: Delete a Product
    Given I clicked "Products" tab
    When I click "Find Product" button
    And I click "Product_459" link
    And I click "Delete" button
    And I confirm deletion action
    Then I should see "Products" home page