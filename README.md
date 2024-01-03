# end2EndAutomationWithRubyAndMinitestReport
* Ensure ruby is installed :)\
  run command:
  ```ruby -v ```\
  if you get an error instead of version information, you need to install ruby.\
  Easist way is using rubyinstaller from here: https://rubyinstaller.org/ 

* clone this repository
* run command:
```bundle install```
* to run all tests run command:\
```rake test```\
if you want to run just one test suite then look under test/specs directory and pick a suite.\
for instance: to run  test/specs/disappearing_elements_test.rb run the following command\
```bundle exec ruby -Itest test/specs/disappearing_elements_test.rb```\
This will run the tests in the disappearing_elements_test file
* after your test run is complete, look for the report file index.html under the test/html_reports directory
