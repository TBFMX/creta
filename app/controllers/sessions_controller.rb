class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:username])
  	if user and user.authenticate(params[:password])
  		session[user_id] = user.user_id
  		redirect_to admin_url
  end

  def destroy
  end
end
