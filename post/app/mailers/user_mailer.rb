class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = root_url
    mail from: 'madhusudan.patidar@neosofttech.com', to:  @user.email , subject: 'Welcome to post app'
  end
end
