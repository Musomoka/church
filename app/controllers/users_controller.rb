class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    before_action :logged_in_user, only: [:index, :update, :edit, :destroy]
    before_action :correct_user,  only: [:update, :edit]
    
    
    def index 
        @users = User.paginate(:page => params[:page], :per_page => 9)
    
    end

    def show 
       
        
    end

    def new
        @user = User.new
    end
    
    def create 

        @user = User.new(user_params)
        if @user.save
            UserMailer.account_activation(@user).deliver_now
            flash[:info] = "Please check your email to activate your account."
      
            redirect_to root_path
        else
        render 'new'
        end
    end

    def edit 
    user = User.find_by(email: params[:email])
        if user && !user.activated? && user.authenticated?(:activation, params[:id])
          user.update_attribute(:activeted, true)
          user.update_attribute(:activated_at, Time.zone.now)
          login user
          flash[:success] = 'Account activited'
          redirect_to user
        else 
            flash[:danger] = "Invalid activation link"
            redirect_to root_url
        end
    end

    def update
        
        
        if @user.update(user_params)
            flash[:success] = "Profile Updated"
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy 
        User.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to users_url

    end

    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end

    def correct_user
        @user = User.find(params[:id])
        redirect_to root_path unless current_user?(@user)
    end

    private
       
        def set_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
