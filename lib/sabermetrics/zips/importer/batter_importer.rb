require 'csv'
require 'progressbar'
require_relative '../batter'

module Sabermetrics
  module ZiPS
    module Importer
      class BatterImporter

        attr_reader :rows, :progress_bar

        def initialize(filename)
          @filename = filename
          @rows = CSV.read filename, headers: :first_row, col_sep: "\t"


          @progress_bar = ProgressBar.new "ZiPS Batters", @rows.length
        end

        def csv_columns
          [ :name, :games, :plate_appearances, :at_bats, :hits, :doubles,
            :triples, :home_runs, :runs, :rbis, :walk, :strike_out,
            :hit_by_pitch, :stolen_bases, :caught_stealing, :average,
            :on_base_percentange, :slugging_percentage, :OPS, :wOBA, :Fld,
            :BsR, :WAR, :player_id]
        end

        def import
          rows.each do |row|
            Sabermetrics::ZiPS::Batter.create batting_params(row)
            progress_bar.inc
          end
          progress_bar.finish
        end

        def batting_params(row)
          params = csv_columns.each_with_index.inject([]) do |arr,(k,i)|
            arr << k.to_sym
            arr << row[i]
          end
          puts params.inspect
          Hash[*params]
        end

      end
    end
  end
end
