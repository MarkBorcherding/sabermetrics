# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140318012804) do

  create_table "lahman_battings", :force => true do |t|
    t.string  "player_id"
    t.string  "team_id"
    t.string  "league_id"
    t.integer "year"
    t.integer "stint"
    t.integer "games"
    t.integer "games_as_batter"
    t.integer "at_bats"
    t.integer "runs"
    t.integer "hits"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "rbis"
    t.integer "stolen_bases"
    t.integer "caught_stealing"
    t.integer "intentional_walks"
    t.integer "hit_by_pitch"
    t.integer "sacrifice_hits"
    t.integer "sacrifice_flies"
    t.integer "ground_into_double_playes"
  end

  add_index "lahman_battings", ["player_id"], :name => "index_lahman_battings_on_player_id"
  add_index "lahman_battings", ["year"], :name => "index_lahman_battings_on_year"

  create_table "lahman_players", :id => false, :force => true do |t|
    t.string   "id",            :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "given_name"
    t.string   "retro_id"
    t.string   "bb_ref_id"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "bats"
    t.integer  "throws"
    t.datetime "debut"
    t.datetime "final_game"
    t.string   "birth_country"
    t.string   "birth_state"
    t.string   "birth_city"
    t.integer  "birth_year"
    t.integer  "birth_month"
    t.integer  "birth_day"
    t.string   "death_country"
    t.string   "death_state"
    t.string   "death_city"
    t.integer  "death_year"
    t.integer  "death_month"
    t.integer  "death_day"
  end

  add_index "lahman_players", ["bb_ref_id"], :name => "index_lahman_players_on_bb_ref_id"
  add_index "lahman_players", ["id"], :name => "index_lahman_players_on_id"
  add_index "lahman_players", ["retro_id"], :name => "index_lahman_players_on_retro_id"

  create_table "zip_batters", :id => false, :force => true do |t|
    t.string  "name"
    t.string  "player_id"
    t.integer "games"
    t.integer "plate_appearances"
    t.integer "at_bats"
    t.integer "hits"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "runs"
    t.integer "rbis"
    t.integer "walk"
    t.integer "strike_out"
    t.integer "hit_by_pitch"
    t.integer "stolen_bases"
    t.integer "caught_stealing"
    t.integer "average"
    t.integer "on_base_percentange"
    t.integer "slugging_percentage"
    t.integer "OPS"
    t.integer "wOBA"
    t.integer "Fld"
    t.integer "BsR"
    t.integer "WAR"
  end

  create_table "zips_batters", :id => false, :force => true do |t|
    t.string  "name"
    t.string  "player_id"
    t.integer "games"
    t.integer "plate_appearances"
    t.integer "at_bats"
    t.integer "hits"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "runs"
    t.integer "rbis"
    t.integer "walk"
    t.integer "strike_out"
    t.integer "hit_by_pitch"
    t.integer "stolen_bases"
    t.integer "caught_stealing"
    t.float   "average"
    t.float   "on_base_percentange"
    t.float   "slugging_percentage"
    t.float   "OPS"
    t.float   "wOBA"
    t.float   "Fld"
    t.float   "BsR"
    t.float   "WAR"
  end

  add_index "zips_batters", ["player_id"], :name => "index_zips_batters_on_player_id"

end
