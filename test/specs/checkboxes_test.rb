# test/specs/checkboxes_test.rb
require 'minitest/autorun'
require_relative '../helpers/webdriver_helper'
require_relative '../test_helper'

class CheckboxesTest < Minitest::Test
  def test_toggle_checkboxes
    driver = initialize_webdriver
    driver.get('https://the-internet.herokuapp.com/checkboxes')

    checkboxes = driver.find_elements(:css, 'input[type="checkbox"]')

    initial_status = checkboxes.map(&:selected?)

    checkboxes.each(&:click)

    final_status = checkboxes.map(&:selected?)

    refute_equal initial_status, final_status, 'Checkbox status did not change after toggling'
  ensure
    driver.quit
  end
end
