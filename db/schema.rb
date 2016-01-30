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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160130200657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string   "username"
    t.string   "title"
    t.text     "description"
    t.text     "rooms_positions"
    t.string   "color"
    t.string   "background_image_url"
    t.integer  "height",               default: 100
    t.integer  "width",                default: 100
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "local_participation_records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "board_id"
    t.integer  "num_moves"
    t.integer  "num_invites"
    t.integer  "xpos"
    t.integer  "ypos"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer  "top_left_x"
    t.integer  "top_left_y"
    t.integer  "height"
    t.integer  "width"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "friend_username"
    t.integer  "board_id"
    t.string   "command"
    t.integer  "xpos"
    t.integer  "ypos"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
