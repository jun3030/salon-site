class User::StaffShiftsController < User::Base
  before_action :set_staff_shift, only: %i[edit update destroy]
  before_action :set_staff, only: %i[index edit update destroy]
  before_action :calendar, only: %i[index edit update destroy]

  def index
    @month = params[:month]&.to_datetime || DateTime.current
    @staff_shifts = @staff.staff_shifts.where(work_date: @month.all_month)
    start_of_month = @month.beginning_of_month
    end_of_month = @month.end_of_month
    regular_holidays = get_regular_holidays
  end

  def edit
  end

  private

  def set_staff_shift
    @staff_shift = StaffShift.find(params[:id])
  end

  def set_staff
    @staff = Staff.find(params[:staff_id])
  end
end
