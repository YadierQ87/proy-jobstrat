Rails.application.routes.draw do

  resources :categories
  get 'administration/index'

  resources :messageemployees

  resources :aplicationjobs

  resources :companies

  resources :employees

  resources :jobs

  resources :articles

  get 'welcome/index'
     root :to => "welcome#index"
     #@title => "Proyecto Job Search by IRSTRAT";

  get 'home', to: 'home#index'

  get 'administration', to: 'administration#index'

  get 'administration/jobs', to: 'administration#admin-jobs'

end




