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

ActiveRecord::Schema.define(version: 2022_10_21_182159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "buy_tickets_url"
    t.string "time"
    t.string "venue_name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.string "longitude"
    t.string "latitude"
    t.string "ticketmaster_id"
  end

  create_table "friends", force: :cascade do |t|
    t.bigint "receiver_id"
    t.bigint "requestor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_friends_on_receiver_id"
    t.index ["requestor_id"], name: "index_friends_on_requestor_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "friends", "users", column: "receiver_id"
  add_foreign_key "friends", "users", column: "requestor_id"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
end
