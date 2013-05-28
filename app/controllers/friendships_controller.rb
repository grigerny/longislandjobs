class FriendshipsController < ApplicationController

  # POST /friendships
  # POST /friendships.json
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])

    respond_to do |format|
      if @friendship.save
        format.html { redirect_to loops_path, notice: 'Added successfully' }
        format.json { render json: @friendship, status: :created, location: @friendship }
      else
        format.html { render loops_path, notice: 'You have already added this user' }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: 'This person has been removed' }
      format.json { head :no_content }
    end
  end
  
  
  # GET /loops/1
  # GET /loops/1.json
  def show
    @friendship = current_user.friendships.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loop }
    end
  end
  
end
