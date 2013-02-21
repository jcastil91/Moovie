class User < ActiveRecord::Base
  attr_accessible :name
  attr_protected :provider, :uid, :oauth_token, :oauth_expires_at, :created_at,
    :updated_at 
  has_many :reviews
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
