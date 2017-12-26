class AdminsController < ApplicationController
  before_action :logged_in_user, :admin_user, only: [:index, :edit,
    :create, :delete, :list_admin, :list_business, :list_user]

  def index
    @users = User.user_info.order(:id).paginate page: params[:page],
      per_page: Settings.admins.per_page
  end

  def list_admin
    @users = User.list_admin.order(:id).paginate page: params[:page],
      per_page: Settings.admins.per_page
  end

  def list_business
    @users = User.list_business.order(:id).paginate page: params[:page],
      per_page: Settings.admins.per_page
  end

  def list_user
    @users = User.list_user.order(:id).paginate page: params[:page],
      per_page: Settings.admins.per_page
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @users = User.user_info.order(:id)
    @user = User.create user_params
  end

  def update
    @users = User.user_info.order(:id)
    @user = User.find params[:id]
    @user.update_attributes user_params
  end

  def delete
    @user = User.find params[:admin_id]
  end

  def destroy
    @users = User.user_info.order(:id)
    @user = User.find params[:id]
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :phone, :sex, :address,
      :role, :password, :password_confirmation
  end
end
