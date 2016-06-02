When(/^I click "(.+)" button$/) do |button_name|
  click_button(button_name, :match => :first)
end

When(/^I fill in "(.+)" with "(.+)"$/) do |field, value|
  fill_in field, :with => value
end

Then(/^I should see "(.+)"$/) do |product_name|
  expect(page).to have_content(product_name)
end

When(/^I fill in "(.+)" with "(.+)" to look for$/) do |field_id, text|
  find("input[id$=#{field_id}]").set text
end

When(/^I click "(.+)" link$/) do |link_name|
  click_link link_name
end

Then(/^I should see "(.+)" link$/) do |link_name|
  expect(page).to have_link link_name
end

When(/^I confirm deletion action$/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^I should see "(\D+)" home page$/) do |page_title|
  within('h1.pageType') do
    expect(page).to have_content page_title
  end
end