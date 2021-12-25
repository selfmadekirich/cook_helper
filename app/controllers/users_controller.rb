class UsersController < ApplicationController
  def new
    @user = User.new

  end

  def create
    id = User.find_by login: user_params[:login], username: user_params[:username]

    if not id.nil?
      flash[:errors] = 'login or username has already been used'
      redirect_to :action => :new  and return
    end
    @user = User.create(user_params)
    if @user.valid?
      redirect_to :controller => :measures
    else
      flash[:errors] =  @user.errors.full_messages.join
      redirect_to :action => :new
    end

    end

end

private
def user_params
  params.require(:user).permit(:login,:username,:password,:password_confirmation)
end

