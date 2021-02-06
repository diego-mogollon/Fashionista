class BookingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to item_path(@item)
    else
      render new
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @item = @booking.item
  end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.save!
  #   redirect_to booking_path(@booking)
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to root_path
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
