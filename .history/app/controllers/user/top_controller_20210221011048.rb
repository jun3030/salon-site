class User::TopController < User::Base
  before_action :authenticate_user!

  def dashboard
  end
end