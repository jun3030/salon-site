class User::TopController < User::Base
  before_action :authenticate_user!
  before_action :calendar

  def dashboard
    @store_members = StoreMember.all
  end
end