When(/^I click "(.+)" button$/) do |button_name|
	first(:button, button_name).click_button
end

When(/^I fill in "(.+)" with "(.+)"$/) do |field_id, value|
  fill_in field_id, :with => value
end

Then(/^I should see 'Product link name'$/) do
end