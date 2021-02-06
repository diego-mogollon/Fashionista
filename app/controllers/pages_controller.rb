class PagesController < ApplicationController
  def dashboard
    @user = current_user
    user.items
  end
end
