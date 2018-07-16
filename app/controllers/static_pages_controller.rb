class StaticPagesController < ApplicationController
  
  
  def home
    @sermons = Sermon.all
    
    @upcomings = Upcoming.all
  
  end

  def contacts
    @contact = Contact.find(1)
    
  end

  def about
  end

  private

  def  contact_params
    params.require(:contact).permit(:website, :company_email, :location, :phone)
  end

end
