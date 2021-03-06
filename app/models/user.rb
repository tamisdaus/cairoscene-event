class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable
		 
  devise :omniauthable, :omniauth_providers => [:instagram,:twitter]

  def self.from_omniauth(auth)
    Rails.logger.debug auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = "#{auth.info.nickname}@#{auth.provider}.com"
      user.password = Devise.friendly_token[0,20]
	  if auth.provider == "instagram"
		user.access_token = auth.access_token
	  end
    end      
  end
end



