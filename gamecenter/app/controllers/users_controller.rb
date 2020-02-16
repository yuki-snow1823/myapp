class UsersController < ApplicationController
  before_action :authenticate_user! 
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # idじゃなくていいのかな →よくない。idじゃなくてどこにアクセスしても自分のプロフが出る
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

  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
       redirect_to user_path(current_user.id)
       # 考える!!userのshow（自分）に行けない、一覧じゃない！
       #paramsだと結局前のやつを参照しちゃう
       #正しい人のIDだからこういう表現になるのだと思う、Railsのメソッド。
       #アクションじゃないからここに書く
    end
  end

end
