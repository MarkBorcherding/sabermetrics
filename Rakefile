require 'sabermetrics/db/connection'

require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

require "bundler/gem_tasks"


require_relative 'db/seeds.rb'
#ActiveRecord::Tasks::DatabaseTasks.seed_loader = Sabermetrics::Seeder.new

task :console => [:library] do
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end


task :library do
  require 'sabermetrics'
end

task :importers do
  require 'sabermetrics/zips/importer'
end

namespace :import do
  task :zips => [:library, :importers ]  do
    dir = File.dirname __FILE__
    Sabermetrics::ZiPS::Importer::BatterImporter.new(dir +'/db/seeds/zips/FanGraphs.ZiPS.Batters.csv').import
  end
end
