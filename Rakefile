# Rakefile

require 'rake/testtask'

task default: [:test]

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/specs/**/*_test.rb'
  t.verbose = true
  t.warning = true
end

