class Task < ApplicationRecord
  belongs_to :task_course
  belongs_to :calendar
  belongs_to :staff
end
