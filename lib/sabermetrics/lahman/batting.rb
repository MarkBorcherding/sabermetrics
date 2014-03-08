require 'active_record'

module Sabermetrics
  module Lahman
    class Batting < ActiveRecord::Base
      self.table_name = 'lahman_battings'

      belongs_to :player
    end
  end
end
