Rails.application.routes.draw do

  resources :countries
  get 'information/index'

  get 'information/jobs'

  get 'information/employees'

  get 'information/companies'

  get 'information/categories'

  get 'information/messages'

  get 'information/usersettings'

  get 'information/aplicationsms'

  resources :messageemployees

  resources :aplicationjobs

  resources :categories

  resources :companies

  resources :employees

  resources :jobs

  resources :articles

  resources :users

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




