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

ActiveRecord::Schema.define(version: 20140224203547) do

  create_table "bird_sightings", force: :cascade do |t|
    t.datetime "sighted_at"
    t.integer  "bird_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bird_sightings", ["bird_id"], name: "index_bird_sightings_on_bird_id"

  create_table "birds", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foxes", force: :cascade do |t|
    t.string   "name"
    t.string   "variety"
    t.string   "coloration"
    t.string   "saying"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mooses", force: :cascade do |t|
    t.string   "name"
    t.string   "variety"
    t.string   "coloration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wolf_blood_samples", force: :cascade do |t|
    t.integer  "wolf_id"
    t.datetime "taken_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "wolf_blood_samples", ["wolf_id"], name: "index_wolf_blood_samples_on_wolf_id"

  create_table "wolves", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
