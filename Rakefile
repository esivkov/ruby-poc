require 'rake/testtask'
require 'rspec/core/rake_task'
require 'ci/reporter/rake/rspec'


task :test do
  RSpec::Core::RakeTask.new(:spec) do |t|
    #t.out = ENV['RESULTS_FILE'] if ENV['RESULTS_FILE']
    t.pattern = 'spec/*_spec.rb'
  end
  Rake::Task["spec"].execute
end

namespace :ci do
  task :all => ['ci:setup:rspec', 'rspec']
end

task :rspec => 'ci:setup:rspec'
