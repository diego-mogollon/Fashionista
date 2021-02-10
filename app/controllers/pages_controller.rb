class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def dashboard
    @user = current_user
    authorize @user
  end

  def home
    @categories = Category.all
  end
end
