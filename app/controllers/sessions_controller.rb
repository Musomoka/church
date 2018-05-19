class SessionsController < ApplicationController
  
  
  def new
    @user = User.new
  end

  def create
  
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticated?(:password, params[:session][:password])
      if user.activated?
        login user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        UserMailer.account_activation(user).deliver_now
        flash[:warning] = message
        
        return redirect_to root_url

      end

        redirect_back_or user

    else

      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'

    end
  end

  def destroy
    log_out  if logged_in?
   
    redirect_to root_url
  end
end
