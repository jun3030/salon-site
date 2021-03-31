class User::StaffsController < User::Base
  before_action :calendar

  def index
    @staffs = @calendar.staffs
  end

end
