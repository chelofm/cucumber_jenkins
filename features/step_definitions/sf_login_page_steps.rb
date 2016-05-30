Given(/^I am on Salesforce login page$/) do
  visit 'https://login.salesforce.com'
end

When(/^I fill in "([^"]*)" field with "([^"]*)"$/) do |field_name, value|
  fill_in field_name.downcase, :with => value
end

When(/^I click 'Log in to Sandbox'$/) do
  click_button 'Login'
end

Then(/^I should see Salesforce home page$/) do
  page.has_content?('Salesforce')
end

Given(/^I logged in Salesforce as "(\w+)" user$/) do |profile|
  username, password = Helper.get_user_credentials(profile.downcase)
  steps %Q{
    Given I am on Salesforce login page
    When I fill in \"Username\" field with \"#{username}\"
    And I fill in \"Password\" field with \"#{password}\"
    And I click 'Log in to Sandbox'
    Then I should see Salesforce home page
  }
end