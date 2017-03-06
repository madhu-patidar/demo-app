class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ##callbacks
  after_create :send_welcome_mail

  private

  ## methods
  def send_welcome_mail
    ##mail send through smtp
    #UserMailer.delay.welcome_email(self)

    ##mail send through mailgun
    UserMailer.welcome_email(self).deliver
  end
  
end
