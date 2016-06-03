When(/^I select "(.+)" from "(.+)" drop down list$/) do |option_name, drop_down_id|
  select option_name, :from => drop_down_id
end