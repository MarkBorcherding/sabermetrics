module Sabermetrics
  module ZiPS
    class Batter < ActiveRecord::Base
      self.table_name = 'zips_batter'
      self.primary_key = :player_id
    end
  end
end
