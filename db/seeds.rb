require_relative '../lib/sabermetrics/lahman/importer/player_importer'
require_relative '../lib/sabermetrics/lahman/importer/batting_importer'

module Sabermetrics
  class Seeder
    def load_seed
      #players_file = File.dirname(__FILE__) + '/seeds/lahman/Master.csv'
      #Sabermetrics::Lahman::Importer::PlayerImporter.new(players_file).import
      #battings_file = File.dirname(__FILE__) + '/seeds/lahman/Batting.csv'
      #Sabermetrics::Lahman::Importer::BattingImporter.new(battings_file).import
      dir = File.dirname __FILE__
      Sabermetrics::ZiPS::Importer::BatterImporter.new(dir +'/db/seeds/zips/FanGraphs.ZiPS.Batters.csv').import
    end
  end
end
