require_relative '../lib/sabermetrics/lahman/importer/player_importer'
require_relative '../lib/sabermetrics/lahman/importer/batting_importer'

module Sabermetrics
  class Seeder
    def load_seed
      players_file = File.dirname(__FILE__) + '/seeds/lahman/Master.csv'
      Sabermetrics::Lahman::Importer::PlayerImporter.new(players_file).import
      battings_file = File.dirname(__FILE__) + '/seeds/lahman/Batting.csv'
      Sabermetrics::Lahman::Importer::BattingImporter.new(battings_file).import
    end
  end
end
