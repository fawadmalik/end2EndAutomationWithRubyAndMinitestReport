# Rakefile

require 'rake/testtask'

task default: [:test]

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/specs/**/*_test.rb'
  t.verbose = true
  t.warning = true
end

task :test do
  sh "mkdir -p html_reports"
  sh "ruby -Itest test/specs/**/*_test.rb --verbose --result=html_reports/index.html"
end
