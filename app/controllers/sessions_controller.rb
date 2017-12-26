class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success] = t "controllers.sessions_controller.logged_in"
      log_in user
      params[:session][:remember_me] == "1" ? remember(user) : forget(user)
      if user.admin?
        redirect_to admins_path
      else
        redirect_to root_path
      end
    else
      flash.now[:danger] = t "controllers.sessions_controller.invalid"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
