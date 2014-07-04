require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'
require "bundler/gem_tasks"

Rake::TestTask.new do |t|
  t.test_files = Dir.glob('test/**/test_*.rb')
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "spec/**/*_spec.rb"
end
