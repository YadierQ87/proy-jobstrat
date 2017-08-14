require_relative 'boot'

require 'csv'
require 'rails/all'

#config.assets.paths << Rails.root.join("app", "assets", "fonts")
config.action_dispatch.default_headers = {
    'Access-Control-Allow-Origin' => 'http://my-web-service-consumer-site.com',
    'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
}

config.middleware.use Rack::Cors do
  allow do
    origins '*'
    resource '*',
             :headers => :any,
             :methods => [:get, :post, :delete, :put, :options]
  end
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProyJobstrat
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
