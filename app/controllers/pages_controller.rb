class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def dashboard
    @user = current_user
    #All bookings made by user, present and past
    @user_bookings = Booking.where(user_id: @user.id)
    @user_past_bookings = []
    @user_current_bookings = []


    # My bookings in progress && My past bookings
    @user_bookings.each do | booking |
      if booking.end_date < Time.now
        @user_past_bookings << booking
      else
        @user_current_bookings << booking
      end
    end
    raise

    #My items that are booked by other users
    @my_items_booked = Booking.joins(:item).where("items.user_id" => current_user.id)
    # authorize @user
  end

  def home
    @categories = Category.all
  end
end
