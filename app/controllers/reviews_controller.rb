class ReviewsController < ApplicationController
before_action :set_booking, only: [:new, :create]

  def new
    @review = Review.new
    # @booking = Booking.find(params[:booking_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @item = @booking.item
    @review.user = current_user
    authorize @item
    if @review.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
