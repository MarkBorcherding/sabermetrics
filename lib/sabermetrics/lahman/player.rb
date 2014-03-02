require 'active_record'

module Sabermetrics
  module Lahman
    class Player < ActiveRecord::Base
      self.table_name = 'lahman_players'
    end
  end
end
