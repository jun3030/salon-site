class User::TopController < User::Base
  before_action :authenticate_user!
  before_action :calendar

  def dashboard
    @tasks = Task.all
    @calendar = Calendar.find_by(id: params[:calendar_id])
    @store_member = if params[:store_member_id]
                      StoreMember.find(params[:store_member_id])
                    else
                      StoreMember.new
                    end
    @task = Task.new(start_time: params[:start_time])
    # スタッフの休憩作成用
    @staff_rest_time = StaffRestTime.new(rest_start_time: params[:start_time], rest_end_time: params[:start_time].to_time.since(1.hours))
  end
end