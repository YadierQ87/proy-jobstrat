source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails' , '~> 4'

# Use jquery as the JavaScript library UI
gem 'jquery-ui-rails' , '~> 6'

gem "font-awesome-rails" , '~> 4'

gem 'font-awesome-sass', '~> 4.7.0'

gem "rails-jquery-autocomplete" , '~> 1'

#para autenticacion
gem 'devise'
#gem 'omniauth'
#gem 'omniauth-twitter'
#gem 'omniauth-github'
#gem 'omniauth-facebook' # Facebook authentication
#gem "koala", "~> 1.10" # Facebook API


#openssl error
gem 'net_http_ssl_fix'
gem 'certified'

#roles para devise
gem 'cancan'

#gem para enviroment
#gem 'dotenv-rails', :require => 'dotenv/rails-now'

#para paginado
gem "kaminari"

#gema para filtrado y paginado + sorting
gem 'filterrific'

#gema pARA subir archivos al server
gem 'paperclip', '~> 5.1'

group :assets do
  gem 'sass-rails',   '~> 5.0'
  gem 'coffee-rails', '~> 4.2'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-datatables-rails'
end

group :development, :test do
  gem 'faker'
end

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
