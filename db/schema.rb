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

ActiveRecord::Schema.define(version: 20150307152840) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reserves", force: true do |t|
    t.integer  "customer_id"
    t.integer  "store_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
