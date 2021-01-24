class Task < ApplicationRecord
  belongs_to :task_course, optional: true
  belongs_to :calendar
  belongs_to :staff, optional: true

  scope :only_valid, -> { where(is_valid_task: true) } # 有効な予約

  # UNIXTIMEに変換
  def start_at
    start_time.to_i
  end

  def end_at
    end_time.to_i
  end

end
