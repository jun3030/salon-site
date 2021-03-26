class Api::V1::StaffsController < ApplicationController
  # before_action :set_task_course, only: [:update, :destroy]
  def index
    task_courses = TaskCourse.all
    render json: task_courses
  end
end