class User::StaffsController < User::Base
  before_action :authenticate_user!
  before_action :calendar

  def index
    @staffs = @calendar.staffs
  end

  def show; end

  def new
    @staff = Staff.new
  end

  def create
    @staff = @calendar.staffs.build(staff_params)
    if @staff.save
      flash[:success] = 'スタッフを登録しました'
      redirect_to user_calendar_staffs_url(current_user, @calendar)
    else
      flash[:danger] = 'スタッフを登録できませんでした。'
      redirect_to user_calendar_staffs_url(current_user, @calendar)
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @staff.update(staff_params_update)
        flash[:success] = 'スタッフを更新しました'
        format.html { redirect_to edit_user_calendar_staff_url(current_user, @calendar, @staff) }
        # format.json { render :show, status: :ok, location: @staff }
      else
        flash[:danger] = 'スタッフを更新できませんでした'
        format.html { redirect_to edit_user_calendar_staff_url(current_user, @calendar, @staff) }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @staff.tasks.where('start_time > ?', Time.current).any?
      flash[:danger] = "#{@staff.name}の予約が#{@staff.tasks.where('start_time > ?', Time.current).count}件残っているので削除できません。予約をキャンセルするか、担当者を変更してください。"
      redirect_to user_calendar_staffs_url(current_user, @calendar)
    else
      @staff.destroy
      flash[:danger] = 'スタッフを削除しました'
      redirect_to user_calendar_staffs_url(current_user, @calendar)
    end
  end

  def staffs_shifts
    @staffs = @calendar.staffs
  end

  private

  def staff_params_update
    params.require(:staff).permit(:name, :description, :email, :picture, staff_regular_holidays_attributes: %i[is_holiday work_start_at work_end_at id is_rest rest_start_time rest_end_time])
  end

  def staff_params
    params.require(:staff).permit(:name, :description, :email, :staff_part)
  end

  def staff
    @staff = Staff.find(params[:id])
  end

end
