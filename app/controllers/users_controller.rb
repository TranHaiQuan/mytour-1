class UsersController < ApplicationController
  before_action :logged_in_user,:correct_user, only: [:update, :edit, :show]

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
  end

  def update
    if @user.update_attributes user_params_update
      flash[:success] = t "controllers.users_controller.success_update"
      redirect_to @user
    else
      render :edit
    end
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

  def logged_in_user
    unless logged_in?
      url_store_location
      flash[:danger] = t "controllers.users_controller.please_login"
      redirect_to login_path
    end
  end

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to root_path unless current_user? @user
  end
end
