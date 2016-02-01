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

ActiveRecord::Schema.define(version: 20160131143956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nuggets", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "nuggets", ["user_id"], name: "index_nuggets_on_user_id", using: :btree

  create_table "text_messages", force: :cascade do |t|
    t.text     "body",         null: false
    t.string   "phone_number", null: false
    t.jsonb    "data"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "topic_items", force: :cascade do |t|
    t.integer  "nugget_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topic_items", ["nugget_id"], name: "index_topic_items_on_nugget_id", using: :btree
  add_index "topic_items", ["topic_id"], name: "index_topic_items_on_topic_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "phone_number", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
