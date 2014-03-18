class CreateZipsBatter < ActiveRecord::Migration
  def change
    create_table :zips_batters, id: false do |t|
      t.string :name, :player_id
      t.integer :games, :plate_appearances, :at_bats, :hits, :doubles, :triples, :home_runs,
        :runs, :rbis, :walk, :strike_out, :hit_by_pitch, :stolen_bases, :caught_stealing
      t.float :average, :on_base_percentange, :slugging_percentage, :OPS, :wOBA, :Fld, :BsR, :WAR
    end

    add_index :zips_batters, :player_id
  end
end
