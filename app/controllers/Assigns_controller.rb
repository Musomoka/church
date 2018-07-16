class AssignsController < ApplicationController

  before_action :user_admin?
  

    def index
    @users =  User.all
    end

    

    def edit

      
      
    end

private

  def user_admin?
    current_user.has_role? 'admin'
  end

end
