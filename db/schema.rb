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

ActiveRecord::Schema.define(version: 2021_02_24_134156) do

  create_table "calendar_configs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "capacity", default: 1
    t.integer "cancelable_time", default: 24
    t.integer "interval_time", default: 0
    t.text "booking_message"
    t.string "booking_link"
    t.text "update_message"
    t.text "cancel_message"
    t.boolean "special_modal_flag", default: false
    t.bigint "calendar_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_calendar_configs_on_calendar_id"
  end

  create_table "calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "calendar_name"
    t.integer "start_date", default: 1
    t.integer "end_date", default: 7
    t.integer "display_week_term", default: 3
    t.integer "start_time", default: 9
    t.integer "end_time", default: 18
    t.boolean "is_released", default: false
    t.integer "display_time", default: 5
    t.string "address", default: "東京都渋谷区"
    t.string "phone", default: "09012345678"
    t.string "public_uid"
    t.integer "display_interval_time", default: 10
    t.string "picture", comment: "予約完了画面に表示する任意の画像"
    t.text "message", comment: "予約完了画面に表示する任意のメッセージ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_uid"], name: "index_calendars_on_public_uid", unique: true
  end

  create_table "iregular_holidays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.date "date"
    t.text "description"
    t.bigint "calendar_config_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_config_id"], name: "index_iregular_holidays_on_calendar_config_id"
  end

  create_table "regular_holidays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "day"
    t.boolean "holiday_flag", default: false
    t.datetime "business_start_at"
    t.datetime "business_end_at"
    t.boolean "is_rest", default: false
    t.datetime "rest_start_time"
    t.datetime "rest_end_time"
    t.bigint "calendar_config_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_config_id"], name: "index_regular_holidays_on_calendar_config_id"
  end

  create_table "staff_regular_holidays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "day"
    t.boolean "is_holiday", default: false
    t.time "work_start_at"
    t.time "work_end_at"
    t.boolean "is_rest", default: false
    t.datetime "rest_start_time"
    t.datetime "rest_end_time"
    t.bigint "staff_id", null: false
    t.bigint "regular_holiday_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["regular_holiday_id"], name: "index_staff_regular_holidays_on_regular_holiday_id"
    t.index ["staff_id"], name: "index_staff_regular_holidays_on_staff_id"
  end

  create_table "staff_rest_times", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "rest_start_time"
    t.datetime "rest_end_time"
    t.boolean "is_default", default: false
    t.bigint "staff_shift_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_shift_id"], name: "index_staff_rest_times_on_staff_shift_id"
  end

  create_table "staff_shifts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "work_start_time"
    t.datetime "work_end_time"
    t.date "work_date"
    t.boolean "is_holiday", default: false
    t.bigint "staff_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_id"], name: "index_staff_shifts_on_staff_id"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "description"
    t.string "staff_part"
    t.string "picture"
    t.text "google_api_token"
    t.bigint "calendar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_staffs_on_calendar_id"
  end

  create_table "task_courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "course_time"
    t.string "charge"
    t.boolean "is_tax_included", default: true
    t.boolean "is_more_than", default: false
    t.string "picture"
    t.bigint "calendar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_task_courses_on_calendar_id"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "request"
    t.datetime "due_at"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "google_event_id"
    t.datetime "deleted_at"
    t.text "memo"
    t.boolean "is_sub"
    t.boolean "is_appoint", default: true
    t.boolean "is_from_public", default: true
    t.string "state"
    t.boolean "is_valid_task", default: true
    t.bigint "task_course_id", null: false
    t.bigint "calendar_id", null: false
    t.bigint "staff_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_tasks_on_calendar_id"
    t.index ["staff_id"], name: "index_tasks_on_staff_id"
    t.index ["task_course_id"], name: "index_tasks_on_task_course_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_id", default: "", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
  end

  add_foreign_key "calendar_configs", "calendars"
  add_foreign_key "iregular_holidays", "calendar_configs"
  add_foreign_key "regular_holidays", "calendar_configs"
  add_foreign_key "staff_regular_holidays", "regular_holidays"
  add_foreign_key "staff_regular_holidays", "staffs"
  add_foreign_key "staff_rest_times", "staff_shifts"
  add_foreign_key "staff_shifts", "staffs"
  add_foreign_key "staffs", "calendars"
  add_foreign_key "task_courses", "calendars"
  add_foreign_key "tasks", "calendars"
  add_foreign_key "tasks", "staffs"
  add_foreign_key "tasks", "task_courses"
end
