class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  def dashboard
    @user = current_user
  end
end
