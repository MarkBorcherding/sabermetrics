require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

require "bundler/gem_tasks"

task :console do
  require 'irb'
  require 'irb/completion'
  require 'sabermetrics'
  ARGV.clear
  IRB.start
end
