class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to
    else
      puts @user.errors.full_messages.join
      redirect_to :new , alert: @user.errors.full_messages.join
    end

    end

end

private
def user_params
  params.require(:user).permit(:login,:username,:password,:password_confirmation)
end

