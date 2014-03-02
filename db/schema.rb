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

ActiveRecord::Schema.define(:version => 20140301231308) do

  create_table "lahman_players", :force => true do |t|
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

end
