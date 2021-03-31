class User::StaffShiftsController < ApplicationController
  def index
    @month = params[:month]&.to_datetime || DateTime.current
    @staff_shifts = @staff.staff_shifts.where(work_date: @month.all_month)
    start_of_month = @month.beginning_of_month
    end_of_month = @month.end_of_month
    regular_holidays = get_regular_holidays
  end

  def edit
  end
end
