class PagesController < ApplicationController
  def home
	if user_signed_in? 
		if current_user.level == "admin" 
			redirect_to rails_admin_path 
		elsif current_user.level == "moderator" 
			redirect_to pages_approving_path 
		else 
			redirect_to root_path 
		end 
	  else 
	  redirect_to root_path 
	end 
  end

  def event
    @events = Event.where(["event_date LIKE ?","%#{params[:search]}%"]).where(["name LIKE ?","%#{params[:search2]}%"]).where(["place LIKE ?","%#{params[:search3]}%"])
  end

  def result
  	 @events = Event.all
  end
  
  def approving
	  @events = Event.all
  end
  
  def edit
  end
  
  def twitter
  end
end