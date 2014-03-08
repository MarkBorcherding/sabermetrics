require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

require "bundler/gem_tasks"

require_relative 'db/seeds.rb'
ActiveRecord::Tasks::DatabaseTasks.seed_loader = Sabermetrics::Seeder.new

task :console do
  require 'irb'
  require 'irb/completion'
  require 'sabermetrics'
  ARGV.clear
  IRB.start
end
