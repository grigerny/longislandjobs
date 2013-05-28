class CommentsController < ApplicationController
   def create
      @loop = Loop.find(params[:loop_id])
      @comment = @loop.comments.build(params[:comment])
      @comment.user_id = current_user.id
      @comment.save!
      redirect_to loop_path(@loop)
    end
    
end
