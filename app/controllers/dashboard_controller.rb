class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user[:id])
    @bookings = @user.booking
    @items = @user.item
    @reviews = @user.review
  end
end
