class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reservation.subject
  #
  def reservation(user)
    @user = user
    @users_courses = UsersCourse.where(user: @user)

    mail to: "boussotestelle@gmail.fr", subject: "Nouvelle réservation de #{@user.firstname} #{@user.lastname}"
  end
end
