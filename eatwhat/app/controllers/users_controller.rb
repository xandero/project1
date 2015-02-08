class UsersController < ApplicationController
  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def show
    @user = User.find params[:id]
  end

    private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  # def check_if_admin
  #   redirect_to(root_path) unless @current_user.present? && @current_user.is_admin?
  # end
end
