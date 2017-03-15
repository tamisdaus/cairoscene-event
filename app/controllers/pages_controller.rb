class PagesController < ApplicationController
  def home
  end

  def event
    @events = Event.where(["event_date LIKE ?","%#{params[:search]}%"]).where(["name LIKE ?","%#{params[:search2]}%"]).where(["place LIKE ?","%#{params[:search3]}%"])
  end

  def result
  	 @events = Event.all
  end

  def contribute
  end
  
  def approving
	  @events = Event.all
  end
  
  def edit
  end
end