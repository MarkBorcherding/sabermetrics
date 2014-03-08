require_relative '../lib/sabermetrics/lahman/importer/player_importer'

module Sabermetrics
  class Seeder
    def load_seed
      players_file = File.dirname(__FILE__) + '/seeds/lahman/Master.csv'
      Sabermetrics::Lahman::Importer::PlayerImporter.new(players_file).import
    end
  end
end
