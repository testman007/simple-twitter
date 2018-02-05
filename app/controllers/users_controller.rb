class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  before_action :user_params, only: [:update]

  def tweets
  end

  def edit
    # before_action :set_user
  end

  def show
    # before_action :set_user
  end

  def update
    # before_action :set_user
    if @user.id == current_user.id
      if @user.update(user_params)
        flash[:info] = "User Profile was successfully updated"
        redirect_to user_path(@user)
      else
        flash.now[:info] = "User Profile was failed to updated"
        render :edit
      end
    else
      flash.now[:info] = "You have no right to change this page"
      render :edit
    end
  end

  def followings
    @followings # 基於測試規格，必須講定變數名稱
  end

  def followers
    @followers # 基於測試規格，必須講定變數名稱
  end

  def likes
    @likes # 基於測試規格，必須講定變數名稱
  end

  #
  # Private
  #

  def user_params
    params.require(:user).permit(:email, :name, :avatar, :introduction)
  end

  def set_user
    @user = User.find(params[:id])    
  end

end
