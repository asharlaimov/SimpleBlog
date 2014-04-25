class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorize

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_lo_login
    end
  end

  def admin_rights
    user = User.find_by(id: session[:user_id])
    unless user && user.admin
      redirect_lo_login
    end
  end

  def redirect_lo_login
    redirect_to login_url(:requested_url => request.fullpath), notice: 'Please login to view requested content'
  end
end