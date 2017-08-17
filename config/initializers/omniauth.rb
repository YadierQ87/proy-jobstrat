#FACEBOOK_CONFIG['app_id'] = 112983799366721
#FACEBOOK_CONFIG['secret'] = feabf2919718545d6ea49a2ea6cb26cd
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, '112983799366721', 'feabf2919718545d6ea49a2ea6cb26cd'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end