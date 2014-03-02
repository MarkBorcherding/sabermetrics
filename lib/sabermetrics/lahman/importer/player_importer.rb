require 'csv'
require 'progressbar'
require_relative '../player'

module Sabermetrics
  module Lahman
    module Importer
      class PlayerImporter

        attr_reader :rows, :progress_bar

        def initialize(filename)
          @filename = filename
          @rows = CSV.read(filename)[1..-1]
          @progress_bar = ProgressBar.new "Players", @rows.length
        end

        def csv_columns
          %w{ id
              birth_year birth_month birth_day birth_country birth_state birth_city
              death_year death_month death_day death_country death_state death_city
              first_name last_name given_name
              weight height bats throws debut final_game
              retro_id bb_ref_id }
        end


        def import
          rows.each do |row|
            Sabermetrics::Lahman::Player.create player_params_hash(row)
            progress_bar.inc
          end
          progress_bar.finish
        end

        private

        def player_params_hash(row)
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
