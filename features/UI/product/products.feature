Feature: Handle Products

Background:
    Given I logged in Salesforce as "Admin" user

Scenario: Create a new Product
    Given I clicked "Products" tab
    When I click "New" button
    And I fill in "Product Name" field with "Product_"
    And I fill in "Product Code" field with "code_"
    And I click "Save" button
    Then I should see 'Product link name'