Rails.application.routes.draw do

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



end




