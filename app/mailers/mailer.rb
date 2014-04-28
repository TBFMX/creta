class Mailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.reset_password.subject
  #
  def reset_password
    @greeting = "Hi"

    mail to: "to@example.org"

    # @user = user
    #  mail(:to => user.email, :subject => "Password Reset")

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.recover_password.subject
  #
  def recover_password(user)
    @greeting = "Hi"

    mail to: "to@example.org"

    # @user = user
    #  mail(:to => user.email, :subject => "Recuperacion de Password")
  end
end
