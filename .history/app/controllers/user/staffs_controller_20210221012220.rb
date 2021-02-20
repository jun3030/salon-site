class User::StaffsController < User::Base
  before_action :authenticate_user!
  before_action :calendar

  def index
    @staffs = @calendar.staffs
  end

end
