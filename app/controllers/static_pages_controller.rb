class StaticPagesController < ApplicationController
  
  
  def home
    @sermons = Sermon.all
    @people = Person.all
    @upcomings = Upcoming.all
  
  end

  def contacts
  end

  def about
  end
end
