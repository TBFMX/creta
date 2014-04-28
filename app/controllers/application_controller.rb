class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize
  skip_before_action :authorize, only: [:recover_password, :new_recover_password]

  protected
  	def authorize
  		unless User.find_by(id: session[:user_id])
  			session[:lasurl]= request.original_url
  			redirect_to login_url, notice: "Please log in"
  		end
  	end
end
