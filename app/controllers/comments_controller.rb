class CommentsController < ApplicationController
  def create
    if comment = Comment.create(comment_marams)
      redirect_to prototype_path(comment.prototype_id)
    else
      render :show
    end
    
  end
  
  def show
    
  end

  private
  def comment_marams
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end

