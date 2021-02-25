class StaffShift < ApplicationRecord
  belongs_to :staff
  has_many :staff_rest_times

  # 出勤日を取得
  scope :without_rest_date, -> { where.not(is_holiday: true) }
end
