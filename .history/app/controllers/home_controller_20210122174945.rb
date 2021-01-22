class HomeController < ApplicationController
  def index
    @calendar = Calendar.new
  end
end
