class ApplicationController < ActionController::Base

  before_action :set_cur_user

  def authorise_user
    redirect_to auth_url unless @current_user
  end

  def set_cur_user
    @current_user ||= User.find_by_id session[:user_id]
  end
end
