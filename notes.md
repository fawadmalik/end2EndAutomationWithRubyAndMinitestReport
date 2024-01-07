The easiest way to get an HTML report is to use Minitest Reporters and rake tasks

1. **Add rake and minitest-reporters to the GemFile:**
Add the following two to the GemFile
gem 'minitest-reporters'  
gem 'rake'

2. **Create a Rakefile:**
   Create a Rakefile in the root of your project. Rake is a build tool for Ruby projects, and it can be used to define tasks for running tests.

   ```ruby
   # Rakefile

   require 'rake/testtask'

   Rake::TestTask.new do |t|
     t.libs << 'test'
     t.pattern = 'test/specs/**/*_test.rb'
     t.verbose = true
     t.warning = true
   end
   ```

   This Rakefile sets up a task called `test` that runs all test files under the `test/specs/` folder and generates an HTML report in the `html_reports` folder.

3. **Run the Tests:**
   Now, you can run the tests using the following command:

   ```bash
   rake test

   
   ```
   
In order for the minitest-reporters to work and generate the html report file, ensure that the test/test_helper.rb file is required in each test file like so:
```ruby
require_relative '../test_helper'



```

This will execute all tests and generate an HTML report in the `html_reports` folder.

The Rakefile is configured to run all test files matching the pattern `'test/specs/**/*_test.rb'` and generate a combined HTML report at `html_reports/index.html`. 

Note: Ensure that your individual test files follow the naming convention of ending with `_test.rb` in the `test/specs/` folder.

* Set these two environment variables
* MINITEST_HTML_REPORTS_DIR, MINITEST_REPORTER
For Windows:
  MINITEST_HTML_REPORTS_DIR=html_reports
  MINITEST_REPORTER=HtmlReporter
