class CalendarConfig < ApplicationRecord
  belongs_to :calendar

  # t.integer "capacity", default: 1 #
  # t.integer "cancelable_time", default: 24 # お客様が、web上で予約時間の何時間前までキャンセルを許容するかの設定。
  # t.integer "interval_time", default: 0 # 一つ一つの予約の間に準備時間を入れることができます。
  # t.text "booking_message"
  # t.string "booking_link"
  # t.text "update_message"
  # t.text "cancel_message"
  # t.boolean "special_modal_flag", default: false
  # t.bigint "calendar_id"
end
