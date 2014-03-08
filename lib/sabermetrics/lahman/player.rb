require 'active_record'

module Sabermetrics
  module Lahman
    class Player < ActiveRecord::Base
      self.table_name = 'lahman_players'
      self.primary_key = :id
      has_many :battings
    end
  end
end
