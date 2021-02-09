class DashboardController < ApplicationController

  def index
    @user = current_user
    # @items = @user.items
    authorize @user
  end
end
