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

ActiveRecord::Schema.define(version: 2019_09_07_070021) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_evaluations_on_subject_id"
  end

  create_table "message_boards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_message_boards_on_category_id"
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

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "message_board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_board_id"], name: "index_posts_on_message_board_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
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
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_readings_on_subject_id"
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
    t.text "theme"
    t.string "instructor"
    t.string "credit"
    t.string "num"
    t.string "lang"
    t.text "notes"
    t.text "objective"
    t.text "contents"
    t.text "outside"
    t.string "others"
    t.string "notice"
  end

  create_table "subjects_timetable_cells", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "timetable_cell_id"
    t.index ["subject_id"], name: "index_subjects_timetable_cells_on_subject_id"
    t.index ["timetable_cell_id"], name: "index_subjects_timetable_cells_on_timetable_cell_id"
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
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_textbooks_on_subject_id"
  end

  create_table "timetable_cells", force: :cascade do |t|
    t.integer "period_id"
    t.integer "day_of_the_week_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "timetable_id"
    t.index ["day_of_the_week_id"], name: "index_timetable_cells_on_day_of_the_week_id"
    t.index ["period_id"], name: "index_timetable_cells_on_period_id"
    t.index ["subject_id"], name: "index_timetable_cells_on_subject_id"
    t.index ["timetable_id"], name: "index_timetable_cells_on_timetable_id"
  end

  create_table "timetables", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["user_id"], name: "index_timetables_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
