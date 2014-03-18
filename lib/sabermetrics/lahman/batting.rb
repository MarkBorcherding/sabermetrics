require 'active_record'

module Sabermetrics
  module Lahman
    class Batting < ActiveRecord::Base
      self.table_name = 'lahman_battings'

      belongs_to :player

      scope :year, ->(year) { where year: year }
      scope :last_year, -> { where year: Date.current.year - 1 }

    end
  end
end
