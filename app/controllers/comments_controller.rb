class CommentsController < ApplicationController
  def create
    @comment = Comment.new(creation_params)
    @comment.user_id = current_user.id
    
    if @comment.save
      respond_to do |format|
       format.js
       format.html
      end
    else
      redirect_to root_path
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
     format.js
     format.html
    end
  end

private

  def creation_params
    params.require(:comment).permit(:content, :chat_id, :user_id)
  end
end
