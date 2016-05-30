require 'capybara/cucumber'

Capybara.default_driver = :selenium

Before do |scenario|
    page.driver.browser.manage.window.maximize
end