class CommentsController < ApplicationController
   def create
      @loop = Loop.find(params[:loop_id])
      @comment = @loop.comments.build(params[:comment])
      @comment.user_id = current_user.id
      @comment.save!
      redirect_to loop_path(@loop)
    end
    
    def create_friendship_comment
        @friendship = Friendship.find(params[:friend_id])
        @friendship_comment = @friendship.comments.build(params[:comment])
        @friendship_comment.user_id = current_user.id
        @friendship_comment.save!
        redirect_to friendship_path(@friendship)
    end
end
