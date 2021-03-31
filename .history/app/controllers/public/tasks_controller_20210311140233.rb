class Public::TasksController < Public::Base

  def index
    @staffs = Staff.all
    # @staffs = if params[:staff_id]
    #             Staff.where(id: params[:staff_id])
    #           else
    #             @calendar.staffs.order(:id)
    #           end
    # @task_course = if params[:course_id]
    #                  TaskCourse.find(params[:course_id])
    #                else
    #                  @calendar.task_courses.first
    #                end

    @calendar = Calendar.first
    @calendar_config = @calendar.calendar_config

    @task_course = @calendar.task_courses.first
    # @task_course = if params[:course_id]
    #                  TaskCourse.find(params[:course_id])
    #                else
    #                  @calendar.task_courses.first
    #                end

    # お客様の予約カレンダーで現時刻から、何時間後の予約から許容するかの設定
    @display_time = @calendar.display_time
    # 一つ一つの予約の間の準備時間
    @interval_time = @calendar_config.interval_time
    # 予約カレンダーの表示間隔
    @times = time_interval(@calendar)
    # 予約カレンダーの表示(start_date(何日後から表示するか)〜display_week_term(何週間後)取得後、1ページ７日分で表示)
    one_month = [*Date.current.days_since(@calendar.start_date)..Date.current.weeks_since(@calendar.display_week_term)]
    @month = Kaminari.paginate_array(one_month).page(params[:page]).per(@calendar.end_date)
    # 店舗の臨時休業日を取得
    @iregular_holydays = @calendar.iregular_holidays(@month)
    # 店舗の定休日を取得
    @regular_holiday_days = @calendar.regular_holiday_days
    @dw = %w[日 月 火 水 木 金 土]
    @staffs_google_tasks = StaffsScheduleOutputer.public_staff_private(@staffs, @month)
  end

  def new
    @calendar = Calendar.find_by(public_uid: params[:calendar_id])
    @user = @calendar.user
    @staff = Staff.find_by(id: params[:staff_id])
    @task_course = TaskCourse.find(params[:course_id])
    @store_member = StoreMember.new
    @task = @store_member.tasks.build(start_time: params[:start_time],
                                      end_time: end_time(params[:start_time], @task_course),
                                      staff_id: @staff&.id,
                                      task_course_id: @task_course.id,
                                      calendar_id: @calendar.id)
    any_staff?(@task)
    rescue RuntimeError => e
      if e.message == "shiftが存在しません。"
        flash[:danger] = "指定された日付の予約はできません。"

      end
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
