Rails.application.routes.draw do
  
  resources :results
  resources :objectives
  resources :bank_subsidiaries
  resources :banks
  resources :workers
  resources :projects
  get  'welcome/index'
  resources :articles
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
