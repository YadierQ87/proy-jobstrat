class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  devise_group :entity, contains: [:user, :company , :candidates]
end
