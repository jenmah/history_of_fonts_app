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

ActiveRecord::Schema.define(version: 20150610135144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combination_fonts", force: :cascade do |t|
    t.integer  "combination_id"
    t.integer  "font_id"
    t.string   "page_element"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "combinations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fonts", force: :cascade do |t|
    t.string   "font_name"
    t.integer  "year_released"
    t.string   "classification"
    t.text     "history"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "designed_by"
    t.text     "inspired_by"
  end

  create_table "suggestions", force: :cascade do |t|
    t.string   "suggested_font"
    t.text     "reason"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
