module SessionsHelper
  def log_in user
    session[:user_id] = user.id
  end

  def remember user
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def redirect_back_or default
    redirect_to session[:forwarding_url] || default
    session[:forwarding_url] = nil
  end

  def url_store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  def current_user
    if user_id = session[:user_id]
      @current_user ||= User.find_by id: session[:user_id]
    elsif user_id = cookies.signed[:user_id]
      user = User.find_by id: user_id
      if user && user.authenticate?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def logged_in_user
    unless logged_in?
      url_store_location
      flash[:danger] = t "controllers.users_controller.please_login"
      redirect_to login_path
    end
  end

  def admin_user
    redirect_back_or root_path unless current_user.admin?
  end

  def logged_in?
    current_user.present?
  end

  def forget user
    user.forget
    cookies.delete :user_id1
    cookies.delete :remember_token
  end

  def log_out
    forget current_user
    session.delete :user_id
    @current_user = nil
  end
end
