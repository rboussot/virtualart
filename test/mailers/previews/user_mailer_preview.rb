class UserMailerPreview < ActionMailer::Preview
  def reservation
    user = User.second
    UserMailer.reservation(user)
  end
end
