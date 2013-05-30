class UsersController < ApplicationController
  def index
     @user = current_user
     @loops = @user.loops
     @search = User.search(params[:q])
     @users = @search.result(:distinct => true)
  end
end
