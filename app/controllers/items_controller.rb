class ItemsController < ApplicationController
  before_action :make_item, only: [:show, :edit, :update, :destroy]
    def index
      # @items = Item.all
      @items = policy_scope(Item).order(created_at: :desc)
    end

    def show

    end

    def new
      @item = Item.new
      authorize @item
      @category = Category.new
    end

    def create
      @item = Item.new(item_params)
      @item.user = current_user
      authorize @item
      @category = Category.new
      if @item.save
        redirect_to item_path(@item)
        flash[:alert] = 'You have successfully added your item.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @item.update(item_params)
        redirect_to item_path(@item) and return
      else
        render :edit
      end
    end

    def destroy
      @item.destroy
      flash[:alert] = 'You have successfully deleted your item.'
      redirect_to dashboard_path and return
    end

    private

    def make_item
      @item = Item.find(params[:id])
      authorize @item
    end

    def item_params
      params.require(:item).permit(:name, :price, :size, :description, :photo)
    end
end
