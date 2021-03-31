class Api::V1::TaskCoursesController < Api::Base
  before_action :set_task_course, only: [:update, :destroy]
end