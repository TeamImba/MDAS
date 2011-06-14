class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :if => Proc.new{ |c| c.request.path =~ /admin/ } do 
    @head_stylesheet_paths = ['admin_screen.css'] 
  end
#  rescue_from CanCan::AccessDenied do |exception|
#    redirect_to root_url, :alert => exception.message
#  end
  
end