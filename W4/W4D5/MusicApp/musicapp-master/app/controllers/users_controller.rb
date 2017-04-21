class UsersController < ApplicationController
  before_action :require_no_login, except: :show

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.new(email: params[:user][:email])
    @user.password = params[:user][:password]

    if @user.save
      login!(@user)
      redirect_to new_session_url
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end
end
