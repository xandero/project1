class UsersController < ApplicationController
  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      if !@user.dob.nil?
        redirect_to meals_path
        else 
          redirect_to edit_user_path(@user)
      end
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
    if user.update user_params
      redirect_to user
    else
      render :edit
    end
  end

  def show
    @user = User.find params[:id]
    @user.activity_level = @user.activity_level.to_f
    @user.weight = @user.weight.to_f
    @user.height = @user.height.to_f

    # This following formula is based on the Mifflin - St Jeor equation to determine daily calorie intake.
    if @user.gender == 'Male'
      @calories = ((20 + @user.activity_level.to_f)/20 * (@user.weight * 10) + (6.25 * @user.height) - (5 * @user.age) + 5.0)
    else
      @calories = ((20 + @user.activity_level.to_f)/20 * (@user.weight * 10) + (6.25 * @user.height) - (5 * @user.age) - 161.0)
    end
    # Using 2000 calories as the average daily intake. 
    @multiplier = (@calories/2000).to_f

    @rec_carb = (@user.nutrition.daily_carb.to_f * @multiplier).round(0)
    @rec_fat = (@user.nutrition.daily_fat.to_f * @multiplier).round(0)
    @rec_protein = (@user.nutrition.daily_protein.to_f * @multiplier).round(0)
  end

    private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :dob, :gender, :activity_level, :weight, :height, :meal_id, :nutrition_id)
  end
end
