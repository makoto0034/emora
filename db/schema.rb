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

ActiveRecord::Schema.define(version: 2019_08_03_061846) do

  create_table "day_of_the_weeks", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.string "kind"
    t.string "portion"
    t.string "criteria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "number"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
  end

  create_table "readings", force: :cascade do |t|
    t.string "author"
    t.string "title"
    t.string "publisher"
    t.string "year"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "others"
    t.text "content"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "semester_id"
    t.integer "day_of_the_week_id"
    t.integer "period_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_of_the_week_id"], name: "index_schedules_on_day_of_the_week_id"
    t.index ["period_id"], name: "index_schedules_on_period_id"
    t.index ["semester_id"], name: "index_schedules_on_semester_id"
    t.index ["subject_id"], name: "index_schedules_on_subject_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "subject_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textbooks", force: :cascade do |t|
    t.string "author"
    t.string "title"
    t.string "publisher"
    t.string "year"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "others"
    t.text "content"
  end

end
