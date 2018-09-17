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

ActiveRecord::Schema.define(version: 2018_09_17_215959) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "visits_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank_subsidiaries", force: :cascade do |t|
    t.string "addres"
    t.integer "bank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_bank_subsidiaries_on_bank_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_results", force: :cascade do |t|
    t.integer "objective_id"
    t.string "description"
    t.integer "kr_measure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objectives", force: :cascade do |t|
    t.integer "user_id"
    t.string "description"
    t.integer "period_value"
    t.string "time_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects_workers", id: false, force: :cascade do |t|
    t.integer "projects_id"
    t.integer "workes_id"
    t.index ["projects_id"], name: "index_projects_workers_on_projects_id"
    t.index ["workes_id"], name: "index_projects_workers_on_workes_id"
  end

  create_table "results", force: :cascade do |t|
    t.string "description"
    t.integer "kr_measure_id"
    t.integer "objective_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["objective_id"], name: "index_results_on_objective_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "fist_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
