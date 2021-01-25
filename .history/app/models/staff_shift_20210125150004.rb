class StaffShift < ApplicationRecord
  belongs_to :staff

  # 出勤日を取得
  scope :without_rest_date, -> { where.not(is_holiday: true) }
end
