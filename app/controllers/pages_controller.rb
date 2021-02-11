class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def dashboard
    @user = current_user
    @user_bookings = Booking.where(user_id: @user.id)
    #My items that are booked by other users
    @my_items_booked = Booking.joins(:item).where("items.user_id" => current_user.id)

    # authorize @user
  end

  def home
    @categories = Category.all
  end


end
