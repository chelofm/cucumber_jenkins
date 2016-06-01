require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10

Before do |scenario|
    page.driver.browser.manage.window.maximize
end