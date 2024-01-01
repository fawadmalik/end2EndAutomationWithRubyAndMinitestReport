require 'minitest/autorun'
require 'minitest/reporters'

# Configure Minitest to use the JUnit reporter
# Minitest::Reporters.use! Minitest::Reporters::HtmlReporter.new(reports_dir: 'reports')
html_reporter = Minitest::Reporters::HtmlReporter.new
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, html_reporter]

# Custom Minitest::Test class to include setup and teardown methods
# class Minitest::Test
#   # Setup method: Runs before each test
#   def setup
#     # Your setup code here (if any)
#
#     # Create a new result reporter for each test
#     puts "Setup method started"
#     @result_reporter = Minitest::Reporters::HtmlReporter.new(reports_dir: 'reports')
#     @result_reporter.start
#     puts "Setup method ended"
#   end
#
#   # Teardown method: Runs after each test
#   def teardown
#     # Your teardown code here (if any)
#
#     # Generate the JUnit report and stop the reporter
#     puts "teardown method starting"
#     @result_reporter.report
#     @result_reporter.stop
#     puts "teardown method ending"
#   end
# end
