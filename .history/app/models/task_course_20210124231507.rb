class TaskCourse < ApplicationRecord
  belongs_to :calendar
  has_many :task
end
