class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      # strong parametersを設定し、user_idを許可
      devise_parameter_sanitizer.permit(:sign_up){|u|
          u.permit(:user_id, :password, :password_confirmation)
      }
      devise_parameter_sanitizer.permit(:sign_in){|u|
          u.permit(:user_id, :password, :remember_me)
      }
  end

  def after_sign_in_path_for(resource)
    user_calendar_dashboard_path(1, 1)
  end

  def end_time(start_time, task_course)
    t = Time.parse(start_time)
    t.since(task_course.course_time.minutes)
  end
end
