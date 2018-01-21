class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin

  def new
    @user = User.new
  end

  def create
    @users = User.list_admin.order(:id).ppage(params[:page]).per Settings.admins.per_page
    @user = User.create user_params
    if @user.save
      flash.now[:success] = "You was created"
    else
      flash.now[:success] = "You can't create"
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @users = User.list_admin.order(:id).page(params[:page]).per Settings.admins.per_page
    @user = User.find params[:id]
    @user.update_attributes edit_user_params
    if @user.update edit_user_params
      flash.now[:success] = "You was updated"
    else
      flash.now[:success] = "You can't update"
    end
    debugger
  end

  def list_admin
    @users = User.list_admin.order(:id).page(params[:page]).per Settings.admins.per_page
  end

  def list_user
    @users = User.list_user.order(:id).page(params[:page]).per Settings.admins.per_page

  end

  def booking
    @user = User.find params[:admin_id]
    @bookings = Booking.list_booking @user.id
  end

  def delete
    @user = User.find params[:admin_id]
  end

  def destroy
    @user = User.find params[:id]
    if @user.admin?
      @users = User.list_admin.order(:id).page(params[:page]).per Settings.admins.per_page
    else
      @users = User.list_user.order(:id).page(params[:page]).per Settings.admins.per_page
    end
    @user.destroy
    if @user.destroyed?
      flash.now[:danger] = "You was destroyed"
    else
      flash.now[:danger] = "You can't destroy"
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :sex, :phone, :address, :admin, :password, :password_confirmation
  end

  def edit_user_params
    params.require(:user).permit :name, :email, :sex, :phone, :address, :admin
  end
end
