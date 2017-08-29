Rails.application.routes.draw do

  devise_for :users
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

  resources :administration


end




