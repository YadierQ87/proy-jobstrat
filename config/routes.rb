Rails.application.routes.draw do

  resources :employees
  resources :m_countries
  resources :messageemployees
  resources :countries
  resources :aplicationjobs
  resources :categories
  resources :companies
  resources :jobs
  resources :articles
  resources :users

  #devise_for :users
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'home', to: 'home#index'
       root :to => "home#index"

  #resources :administration
  #devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  #devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  #get 'auth/failure', to: redirect('/')
  #get 'signout', to: 'sessions#destroy', as: 'signout'
  #resources :sessions, only: [:create, :destroy]
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'sessions/create'

end




