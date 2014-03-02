class AddPlayers < ActiveRecord::Migration
  def up
    create_table :lahman_players do |t|
      t.string :id, :first_name, :last_name, :given_name, :retro_id, :bb_ref_id
      t.integer :weight, :height, :bats, :throws
      t.datetime :debut, :final_game
      [:birth, :death].each do |b|
        t.string  *[:country, :state, :city].map { |s| "#{b}_#{s}".to_sym }
        t.integer *[:year, :month, :day].map { |i| "#{b}_#{i}".to_sym }
      end
    end
    add_index :lahman_players, :id
    add_index :lahman_players, :retro_id
    add_index :lahman_players, :bb_ref_id
  end

  def down
    drop_table :players
  end
end
