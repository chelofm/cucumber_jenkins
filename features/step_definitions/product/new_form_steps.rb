When(/^I click "(.+)" button$/) do |button_name|
  click_button(button_name, :match => :first)
end

When(/^I fill in "(.+)" with "(.+)"$/) do |field, value|
  @product_name = nil
  if value.downcase.eql?("product") || value.downcase.eql?("code")
    @product_name = value.downcase.eql?("product")? Helper.get_uuid_name(value) : Helper.get_uuid()
  else
    @product_name = value
  end
  fill_in field, :with => @product_name
end

Then(/^I should see 'Product name'$/) do
  page.should have_content(@product_name)
end


When(/^I fill in "(.+)" with "(\D+)" to look for$/) do |field, text|
  fill_in field, @product_name
end

When(/^I click "([^"]*)" link$/) do |link_name|
  click_link link_name
end

Then(/^I should see "([^"]*)" link$/) do |arg1|
end