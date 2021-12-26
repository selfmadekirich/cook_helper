class AuthController < ApplicationController
  def new
    @user = User.new

  end

  def create
    @user = User.find_by_login params[:user][:login]
    if @user.password ==  params[:password]
      session[:user_id] = @user.id
      redirect_to recipes_url
    else
      flash[:errors] =  @user.errors.full_messages.join
      redirect_to :action => :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end



end

