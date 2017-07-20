Rails.application.routes.draw do

  get 'administration/index'

  get 'administration/jobs'

  get 'administration/employees'

  get 'administration/companies'

  get 'administration/categories'

  resources :categories

  resources :messageemployees

  resources :aplicationjobs

  resources :companies

  resources :employees

  resources :jobs

  resources :articles

  get 'welcome/index'
      root :to => "welcome#index"

  get 'home', to: 'home#index'

  get 'administration', to: 'administration#index'


end




