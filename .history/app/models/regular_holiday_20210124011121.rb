class RegularHoliday < ApplicationRecord
  belongs_to :calendar_config

  # t.string "day" # 曜日
  # t.boolean "holiday_flag", default: false # 定休日フラグ
  # t.datetime "business_start_at" # 基本営業開始時間
  # t.datetime "business_end_at" # # 基本営業開始時間
  # t.boolean "is_rest", default: false # 休憩フラグ
  # t.datetime "rest_start_time" # 基本休憩開始時間
  # t.datetime "rest_end_time" # 基本休憩終了時間
  # t.bigint "calendar_config_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["calendar_config_id"], name:
end
