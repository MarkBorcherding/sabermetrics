module Sabermetrics
  class Batting
    attr_accessor :games, :runs

    def initialize(source = nil)
      return unless source
      self.games = source.games
      self.runs = source.runs
    end

    def +(batting)
      Batting.new games: games + batting.games,
                  runs: runs + batting.runs
    end
  end
end

