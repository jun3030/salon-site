class HomeController < ApplicationController
  def index
    @staff = Staff.all
    # @staffs = if params[:staff_id]
    #             Staff.where(id: params[:staff_id])
    #           else
    #             @calendar.staffs.order(:id)
    #           end



    @calendar = Calendar.first
    @times = time_interval(@calendar)
    # 予約カレンダーの表示(一ヶ月データ取得後、1ページ７日分で表示)
    one_month = [*Date.current.days_since(@calendar.start_date)..Date.current.weeks_since(@calendar.display_week_term)]
    @month = Kaminari.paginate_array(one_month).page(params[:page]).per(@calendar.end_date)
  end

  private

  # 予約カレンダーの表示間隔
  def time_interval(calendar)
    start_time = calendar.start_time
    end_time = calendar.end_time
    interval_time = calendar.display_interval_time
    array = []
    1.step do |i|
      array.push(Time.parse("#{start_time}:00") + interval_time.minutes * (i - 1))
      break if Time.parse("#{start_time}:00") + interval_time.minutes * (i - 1) == Time.parse("#{end_time}:00")
    end
    array
  end
end
