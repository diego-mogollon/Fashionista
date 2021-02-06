class ItemCategoriesController < ApplicationController
def new
  @item = Item.find(params[:item_id])
  @item_category = ItemCategory.new
end


def create
  @item = Item.find(params[:item_id])

  category_ids = params[:item_category][:category_id]

category_ids.each do |category_id|
  @item_category = ItemCategory.new(item_id: @item.id, category_id: category_id)

  @item_category.save

end

redirect_to item_path(@item)
end

      private

  def item_category_params
    params.require(:item_category).permit(:category_item)
  end
end


