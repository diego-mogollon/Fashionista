class ReviewsController < ApplicationController
  def new
    @item = item.find(params[:item_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @item = item.find(params[:item_id])
    @review.item = @item
    if @review.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :booking_id)
  end
end
