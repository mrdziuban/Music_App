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

ActiveRecord::Schema.define(:version => 20130711193450) do

  create_table "albums", :force => true do |t|
    t.string   "album_name"
    t.integer  "band_id"
    t.text     "cover_art_link"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "albums", ["band_id"], :name => "index_albums_on_band_id"

  create_table "bands", :force => true do |t|
    t.string   "band_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes", :force => true do |t|
    t.text     "message"
    t.integer  "track_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "notes", ["track_id"], :name => "index_notes_on_track_id"
  add_index "notes", ["user_id"], :name => "index_notes_on_user_id"

  create_table "tracks", :force => true do |t|
    t.string   "track_name"
    t.integer  "album_id"
    t.time     "run_time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tracks", ["album_id"], :name => "index_tracks_on_album_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "session_token"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "activation_token"
    t.boolean  "activated",        :default => false
    t.boolean  "admin",            :default => false
  end

end
