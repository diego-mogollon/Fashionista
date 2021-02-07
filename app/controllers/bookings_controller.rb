class BookingsController < ApplicationController
  before_action :make_booking, only: [:show, :edit, :update, :destroy]

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
      redirect_to item_booking_path(@item, @booking)
    else
      render new
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @item = @booking.item
  end

  def edit
    @item = Item.find(params[:item_id])
  end

  def update
    @item = Item.find(params[:item_id])
    if @booking.update(booking_params)
    redirect_to item_booking_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def make_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
