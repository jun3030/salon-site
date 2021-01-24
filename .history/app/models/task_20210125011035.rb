class Task < ApplicationRecord
  belongs_to :task_course, optional: true
  belongs_to :calendar
  belongs_to :staff, optional: true
end
