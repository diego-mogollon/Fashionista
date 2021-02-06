class ItemCategoriesController < ApplicationController
def new
  @item = Item.find(params[:item_id])
  @item_category = ItemCategory.new
end
end
