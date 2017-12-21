class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
       log_in user
       redirect_to user
     else
      flash.now[:denger]= '無効な値です。メールアドレスまたはパスワードが誤っています。'
      render "new"
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
