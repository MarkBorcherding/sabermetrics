require 'csv'
require 'progressbar'
require_relative '../batting'
module Sabermetrics
  module Lahman
    module Importer
      class BattingImporter
        attr_reader :rows, :progress_bar

        def initialize(filename)
          @filename = filename
          @rows = CSV.read filename, headers: :first_row
          @progress_bar = ProgressBar.new "Battings", @rows.length
        end

        def csv_columns
          %w{ player_id year stint team_id league_id games games_as_batter
          at_bats runs hits doubles triples home_runs rbis
          stolen_bases caught_stealing
          intentional_walks hit_by_pitch sacrifice_hits sacrifice_flies
          ground_into_double_playes}
        end

        def import
          rows.each do |row|
            Sabermetrics::Lahman::Batting.create batting_params(row)
            progress_bar.inc
          end
          progress_bar.finish
        end

        private

        def batting_params(row)
          params = csv_columns.each_with_index.inject([]) do |arr,(k,i)|
            arr << k.to_sym
            arr << row[i]
          end
          Hash[*params]
        end
      end
    end
  end
end
