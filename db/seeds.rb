require_relative '../lib/sabermetrics/lahman/importer/player_importer'

players_file = File.dirname(__FILE__) + '/seeds/lahman/Master.csv'
Sabermetrics::Lahman::Importer::PlayerImporter.new(players_file).import
