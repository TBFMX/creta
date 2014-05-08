class Mailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.reset_password.subject
  #
  def reset_password(user,uemail)
    @greeting = "Hi"
    @user = user
    #mail to: uemail
    mail(:to => uemail, :subject => "Password Reset", :from => "\"Conserje\" <info@tbf.mx>")

  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.recover_password.subject
  #
  def recover_password(user,uemail)
    @greeting = "Hi"
    @user = user
    #mail to: uemail
    mail(:to => uemail, :subject => "Recuperacion de Password", :from => "\"Conserje\" <info@tbf.mx>", :reply_to =>"conserje@tbf.com")
  end

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset" , :from => "\"Conserje\" <info@tbf.mx>", :reply_to =>"conserje@tbf.com"
  end

  def create_user(user)
    @user = user
    mail :to => user.email, :subject => "Se creo su usuario", :from => "\"Conserje\"<info@tbf.mx>", :reply_to =>"conserje@tbf.com"
  end

  def destroy_user(user)
    @user = user
    mail :to => user.email, :subject => "Su usuario a sido destruido", :from => "\"Conserje\" <info@tbf.mx>", :reply_to =>"conserje@tbf.com"
  end


  
end
