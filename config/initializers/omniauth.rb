Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, '112983799366721', 'feabf2919718545d6ea49a2ea6cb26cd'
  elsif Rails.env.production?
    provider :facebook, 'PRODUCTION_APP_ID', 'PRODUCTION_APP_SECRET'
  end
end