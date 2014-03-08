class AddBatting < ActiveRecord::Migration
  def change
    create_table :lahman_battings do |t|
      t.string :player_id, :team_id, :league_id
      t.integer :year, :games, :games_as_batter, :at_bats, :runs, :hits, :doubles, :triples, :home_runs, :rbis, :stolen_bases, :caught_stealing, :intentioal_walks, :hit_by_pitch, :sacrifice_hits, :sacrifice_flies, :ground_into_double_playes
    end
    add_index :lahman_battings, :player_id
    add_index :lahman_battings, :year
  end
end
