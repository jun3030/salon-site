class StaffShift < ApplicationRecord
  belongs_to :staff

  scope :without_rest_date, -> { where.not(is_holiday: true) }
end
