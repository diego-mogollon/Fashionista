class ItemsController < ApplicationController
    def index 
      @items = Item.all
    end

    def show 
      @item = Item.find(params[:id])
    end

    # def new 
    #   @item = Item.new
    # end

    # def create 
    #   @item = Item.new(item_params)
    #   if @item.save
    #     redirect_to item_path(@item)
    #   else
    #     render :new
    #   end
    # end

    # def destroy
    #   @item = Item.find(params[:id])
    #   @item.destroy
    #   redirect_to items
    # end
    private

    def item_params
      params.require(:item).permit(:name, :price, :size, :description)
    end
end
