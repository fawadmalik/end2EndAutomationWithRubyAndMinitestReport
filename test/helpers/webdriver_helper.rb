# test/helpers/webdriver_helper.rb
require 'selenium-webdriver'

def initialize_webdriver
  Selenium::WebDriver.logger.level = :info
  Selenium::WebDriver.logger.output = 'webdriver.log'

  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--disable-notifications')

  Selenium::WebDriver.for :chrome, options: options
end
