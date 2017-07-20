Rails.application.routes.draw do

  resources :messageemployees

  resources :aplicationjobs

  resources :categories

  resources :companies

  resources :employees

  resources :jobs

  resources :articles

  get 'welcome/index'
      root :to => "welcome#index"

  get 'home', to: 'home#index'

  get 'administration', to: 'administration#index'

  get 'administration/index'

  get 'administration/jobs'

  get 'administration/employees'

  get 'administration/companies'

  get 'administration/categories'


end




