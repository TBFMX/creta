class WelcomeController < ApplicationController
  skip_before_action :authorize
  def index
  end

  def new
  end

  def create
  	user = User.find_by(username: params[:username])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		session[:uname] = user.name + " " + user.lastname
  		session[:rol_id] = user.rol_id
      puts "dentro del if"
      puts "hola" + user.name + " " + user.lastname

      #variables de rol
      rol =Rol.find_by(id: user.rol_id)
      session[:mod0] =rol.admin
      session[:mod1] =rol.module_1
      session[:mod2] =rol.module_2
      session[:mod3] =rol.module_3
      session[:mod4] =rol.module_4
      session[:mod5] =rol.module_5
      #termina variables de rol


      unless session[:lasurl].nil? || session[:lasurl].empty?
  		  redirect_to session[:lasurl]
      else 
        redirect_to root_url
      end

  	else
  		redirect_to root_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, notice: "Logged out"
  end



end
