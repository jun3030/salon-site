class HomeController < ApplicationController
  def index
    # 予約カレンダーの表示(7日事)
    @calendar = Calendar.first
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
      array.push(Time.parse("#{start_time}:00") + interval_time.minutes)
      break if Time.parse("#{start_time}:00") + interval_time.minutes == Time.parse("#{end_time}:00")
    end
    array
  end
end