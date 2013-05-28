class UsersController < ApplicationController
  def index
     @loops = current_user.loops
     @search = User.search(params[:q])
     @users = @search.result
  end
end
