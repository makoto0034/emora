# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_20_085647) do

  create_table "action_mailbox_inbound_emails", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.string "message_id", null: false
    t.string "message_checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "profile"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "evaluations", "subjects"
  add_foreign_key "message_boards", "categories"
  add_foreign_key "posts", "message_boards"
  add_foreign_key "posts", "users"
  add_foreign_key "readings", "subjects"
  add_foreign_key "schedules", "day_of_the_weeks"
  add_foreign_key "schedules", "periods"
  add_foreign_key "schedules", "semesters"
  add_foreign_key "schedules", "subjects"
  add_foreign_key "textbooks", "subjects"
  add_foreign_key "timetable_cells", "timetables"
end
