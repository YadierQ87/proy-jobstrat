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

  get 'aplicationjobs/new/:job_id', to: 'aplicationjobs#new'

  #devise_for :users
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'home', to: 'home#index'
       root :to => "home#index"

  #resources :administration
  get 'administration/jobs', to: 'administration#jobs'
  get 'administration/companies', to: 'administration#companies'


end




