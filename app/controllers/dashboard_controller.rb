class DashboardController < ApplicationController

  before_filter :current_user

  def show
    @resturants = Resturant.where(user_id: current_user.id).all
    @ratings = Rating.where(user_id: current_user.id).all
  end

end
