class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    # idじゃなくていいのかな
  end

  def edit
    @user = User.find(params[:id])
    
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :user_image)
  end

end
