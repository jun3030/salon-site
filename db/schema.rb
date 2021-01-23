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

ActiveRecord::Schema.define(version: 2021_01_23_040335) do

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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_uid"], name: "index_calendars_on_public_uid", unique: true
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
    t.string "staff_image"
    t.bigint "calendar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_staffs_on_calendar_id"
  end

  add_foreign_key "calendar_configs", "calendars"
  add_foreign_key "staff_shifts", "staffs"
  add_foreign_key "staffs", "calendars"
end
