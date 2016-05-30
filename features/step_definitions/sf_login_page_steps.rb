Given(/^I am on Salesforce login page$/) do
  visit 'https://test.salesforce.com'
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