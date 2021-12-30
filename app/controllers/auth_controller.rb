class AuthController < ApplicationController
  def new
    @user = User.new

  end

  def create
    @user = User.find_by_login params[:user][:login]
    if not @user.blank? and  BCrypt::Password::new(@user.password_digest) == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to root_url
    else
      flash[:errors] =  "login or password is incorrect"
      redirect_to :action => :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end

