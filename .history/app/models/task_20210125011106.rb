class Task < ApplicationRecord
  belongs_to :task_course, optional: true
  belongs_to :calendar
  belongs_to :staff, optional: true

  # UNIXTIMEに変換
  def start_at
    start_time.to_i
  end

  def end_at
    end_time.to_i
  end
end
