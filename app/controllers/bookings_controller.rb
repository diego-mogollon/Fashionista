class BookingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end
    
  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @booking
    @booking.save
    redirect_to item_path(@item)
  end
    
  private
    
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
