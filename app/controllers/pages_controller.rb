class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show, :home]
  def dashboard
    @user = current_user
  end
  def home
    @categories = Category.all
  end
end
