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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_21_193049) do

  create_table "channel_memberships", force: :cascade do |t|
    t.integer "player_id"
    t.integer "channel_id"
    t.boolean "admin"
    t.index ["channel_id"], name: "index_channel_memberships_on_channel_id"
    t.index ["player_id"], name: "index_channel_memberships_on_player_id"
  end

  create_table "channels", force: :cascade do |t|
    t.string "name"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "url"
    t.integer "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "channel_id"
    t.index ["channel_id"], name: "index_messages_on_channel_id"
    t.index ["player_id"], name: "index_messages_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
