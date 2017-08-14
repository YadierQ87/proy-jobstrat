Rails.application.routes.draw do

  get 'sessions/create'

  resources :m_countries
  #devise_for :users
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'home', to: 'home#index'
       root :to => "home#index"
  get 'information/index'
  get 'information/jobs'
  get 'information/employees'
  get 'information/companies'
  get 'information/categories'
  get 'information/messages'
  get 'information/usersettings'
  get 'information/aplicationsms'
  resources :messageemployees
  resources :countries
  resources :aplicationjobs
  resources :categories
  resources :companies
  resources :employees
  resources :jobs
  resources :articles
  resources :users
  resources :administration

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end




