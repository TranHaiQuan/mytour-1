class UsersController < ApplicationController
  before_action :logged_in_user, :correct_user, only: [:update,
    :edit, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "controllers.users_controller.success_signup"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find_by id: params[:id]
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def update
    @user = User.find_by id: params[:id]
    if @user.update_attributes user_params_update
      flash[:success] = t "controllers.users_controller.success_update"
      redirect_to @user
    else
      render :edit
    end
  end

  def correct_user
     @user = User.find_by id: params[:id]
    redirect_back_or root_path unless current_user? @user
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :sex, :address,
          :phone, :password, :password_cofirmation
  end

  def user_params_update
    params.require(:user).permit :name, :sex, :address,
      :phone, :password, :password_cofirmation
  end
end
