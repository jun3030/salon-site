class Api::V1::StaffsController < ApplicationController
  # before_action :set_task_course, only: [:update, :destroy]
  def index
    staffs = Staff.all
    render json: staffs
  end
end