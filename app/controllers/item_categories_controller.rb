class ItemCategoriesController < ApplicationController
def new
  @item = Item.find(params[:item_id])
  @item_category = ItemCategory.new
end


def create

  @item = Item.find(params[:item_id])
  @item_category = ItemCategory.new
raise
      # @category = Item.new(item_params)
      # @category = Category.new
      # @item.user = current_user
      # if @item.save
      #   redirect_to new_item_item_category_path(@item)
      # else
      #   render :new
end

      private

  def item_category_params
    params.require(:item_category).permit(:item_id)
  end
end


