class CreateZipBatter < ActiveRecord::Migration
  def change
    create_table :zip_batters, id: false do |t|
      t.string :name, :player_id
      t.integer :games, :plate_appearances, :at_bats, :hits, :doubles, :triples, :home_runs,
        :runs, :rbis, :walk, :strike_out, :hit_by_pitch, :stolen_bases, :caught_stealing, :average,
        :on_base_percentange, :slugging_percentage, :OPS, :wOBA, :Fld, :BsR, :WAR
    end
  end
end
