class SessionsController < ApplicationController

  before_action :require_no_login, except: :destroy

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email], params[:user][:password])

    if @user
      login!(@user)
      redirect_to bands_url
    else
      flash[:errors] = ['Invalid credentials']
      render :new
    end
  end

  def destroy
    logout!(current_user)
    redirect_to new_session_url
  end
end
