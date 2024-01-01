# test/specs/disappearing_elements_test.rb
require 'minitest/autorun'
require_relative '../helpers/webdriver_helper'
require_relative '../test_helper'

class DisappearingElementsTest < Minitest::Test
  def test_disappearing_elements
    driver = initialize_webdriver
    driver.get('https://the-internet.herokuapp.com/disappearing_elements')

    initial_elements = driver.find_elements(:css, '.example li')

    loop do
      driver.navigate.refresh
      current_elements = driver.find_elements(:css, '.example li')

      break unless current_elements.size == initial_elements.size
    end

    assert_operator driver.find_elements(:css, '.example li').size, :!=, initial_elements.size,
                    'Number of elements did not change after refreshing'
  ensure
    driver.quit
  end
end
