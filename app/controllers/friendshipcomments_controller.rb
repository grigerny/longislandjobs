class FriendshipcommentsController < ApplicationController
  def create
      @friendship = Friendship.find(params[:friendship_id])
      @friendshipcomment = @friendship.friendshipcomments.build(params[:friendshipcomment])
      @friendshipcomment.user_id = current_user.id
      @friendshipcomment.save!
      redirect_to friendship_path(@friendship)
  end
end
