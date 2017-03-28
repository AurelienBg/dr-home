class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"

    # mail(to: @user.email, subject: t en.user_mailer.welcome.subject)
    mail(
      to: @user.email,
      bcc: "aurelion@gmail.com",
      subject: "Bienvenue sur Dr Home"
      # Removed "{@user.first_name}" in Subject because not yet given by user
    )
  end
end
