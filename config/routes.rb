Rails.application.routes.draw do

  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/create'

  resources :m_countries
  #devise_for :users
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'home', to: 'home#index'
       root :to => "home#index"

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

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  #devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
  match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  #resources :sessions, only: [:create, :destroy]

end




