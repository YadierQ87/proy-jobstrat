Rails.application.routes.draw do

  devise_for :users
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


end




