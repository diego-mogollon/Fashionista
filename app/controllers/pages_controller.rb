class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def dashboard
    @user = current_user
    #All bookings made by user, present and past
    @user_bookings = Booking.where(user_id: @user.id)
    @user_past_bookings = []
    @user_past_bookings_hash = {}
    @user_current_bookings = []
    @user_current_bookings_hash = {}
    @my_items_booked_hash = {}

    # My bookings in progress && My past bookings
    @user_bookings.each do | booking |
      if booking.end_date < Time.now +1.day
        @user_past_bookings << booking
        @user_past_bookings_hash["#{booking.id}"] = Item.where(id: booking.item_id)
      else
        @user_current_bookings << booking
        @user_current_bookings_hash["#{booking.id}"] = Item.where(id: booking.item_id)
      end
    end


    #All my items that are booked by other users
    @my_items_booked = Booking.joins(:item).where("items.user_id" => current_user.id)
    @my_items_booked.each do | booking |
      @my_items_booked_hash["#{booking.id}"] = Item.where(id: booking.item_id)
    end
    # authorize @user
  end

  def home
    @categories = Category.all
  end
end
