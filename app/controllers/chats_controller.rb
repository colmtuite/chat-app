class ChatsController < ApplicationController
  before_filter :require_login
  
  def index
    @chats = Chat.all
    @chat = Chat.new(params[:chat])
  end
  
  def create
    @chat = Chat.new(creation_params)
    @chat.owner_email = current_user.email
    
    if @chat.save
      redirect_to @chat
    else
      redirect_to root_path
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @comments = @chat.comments
    @comment = Comment.new
    @users = User.all
  end
  
  def update
    @chat = Chat.find(params[:id])

    if @chat.update_attributes(update_params)
      flash[:success] = "Chat updated."
      redirect_to :back
    else
      render :edit
    end
  end

private

  def creation_params
    params.require(:chat).permit(:title, :owner_email)
  end
  
  def update_params
    params.require(:chat).permit(:title, :owner_email)
  end
end
