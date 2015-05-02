class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(creation_params)
    
    if @user.save
      auto_login(@user)
      redirect_to chats_path
    else
      render :new
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user

    if @user.update_attributes(update_params)
      flash[:success] = "Settings updated."
      redirect_to chats_path
    else
      render :edit
    end
  end
  
private

  def creation_params
    params.require(:user).permit(:name, :email, :password)
  end
  
  def update_params
    params.require(:user).permit(:name, :email)
  end
end
