class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:event, :show, :contribute, :new, :create]
  protect_from_forgery with: :exception
  
end