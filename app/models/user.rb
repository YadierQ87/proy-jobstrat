class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :authorizations
  validates :email, presence: true

  devise :omniauthable, :omniauth_providers => [:facebook]
  attr_accessor :provider, :uid

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         encrypted_password:Devise.friendly_token[0,20]
      )
    end
    user
  end

  def self.create_from_hash!(hash)
    create(email: hash.info.email)
  end

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

  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?
      email = auth.info.email
      user = User.find_by(email: email) if email

      # Create the user if it's a new registration
      if user.nil?
        password = Devise.friendly_token[0,20]
        if auth.provider == 'facebook'
          user = User.new(
              email: email ? email : "#{auth.uid}@change-me.com",
              password: password,
              password_confirmation: password
          )
        elsif auth.provider == 'twitter'
          user = User.new(
              email: "#{auth.uid}@change-me.com",
              password: password,
              password_confirmation: password
          )
        end
      end
      user.save!
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end

    user
  end

  def email_verified?
    if self.email
      if self.email.split('@')[1] == 'change-me.com'
        return false
      else
        return true
      end
    else
      return false
    end
  end


  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new()
    facebook.get_object("me?fields=name,picture")
  end


end
