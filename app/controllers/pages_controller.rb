class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def dashboard
    @user = current_user
    @user_bookings = Booking.where(user_id: @user.id)
    # authorize @user
  end

  def home
    @categories = Category.all
  end


end
