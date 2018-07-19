Rails.application.routes.draw do
  get 'posts/new'
  #resources :articles
  get  'welcome/index'
  post "welcome" => "welcome#create"
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
