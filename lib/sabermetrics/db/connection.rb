require 'active_record'
require 'yaml'

env = ENV['RAILS_ENV'] || 'development'
config = YAML.load_file('db/database.yml')

ActiveRecord::Base.establish_connection config[env]
