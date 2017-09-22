Rails.application.routes.draw do

  devise_for :candidates
  devise_for :companies
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
  get 'messageemployees/new/:candidate_id', to: 'messageemployees#new'

  #devise_for :users
  #match '/auth/:provider/callback', :to => 'sessions#create', via: :get
  get 'home', to: 'home#index'
       root :to => "home#index" #page index by default

  #resources :administration
  get 'administration/jobs', to: 'administration#jobs'  #donde se guardan los trabajos aplicados para un usuario
  get 'administration/companies', to: 'administration#companies'  #donde se guardan las aplicaciones de trabajo para esa compannia
  get 'administration/employees', to: 'administration#employees' #donde se guardan los mensajes de los usuarios empleados

  post 'search', to: 'home#search'

end




