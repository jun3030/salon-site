class Api::V1::TaskCoursesController < ApplicationController
  # before_action :set_task_course, only: [:update, :destroy]
  def index
    task_courses = TaskCourse.all(created_at: :desc)
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: task_courses }
  end
end